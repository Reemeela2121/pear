import requests
import json
import pandas as pd
from sodapy import Socrata
import math
import folium
from folium import plugins
from google.cloud import texttospeech
from pygame import mixer

APIKEY = "AIzaSyANnWnEDpneaAZ1tOzG8xO717qNvdYgjTA"


def getCoord(name):
   url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query={name}&key={key}".format(name = name, key = APIKEY)
   response = requests.get(url)
   res = json.loads(response.text)
   lat = res["results"][0]["geometry"]["location"]["lat"]
   lon = res["results"][0]["geometry"]["location"]["lng"]

   print(str(lat) + " " + str(lon))

   return (lat, lon)
   

def findPlaces(loc=("39.296318","-76.592941"),radius=3000, pagetoken = None):
   lat, lng = loc
   index = 0
   bestRoute = None
   bestCost = float("inf")
   type = "restaurant"
   url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location={lat},{lng}&radius={radius}&type={type}&key={APIKEY}{pagetoken}".format(lat = lat, lng = lng, radius = radius, type = type,APIKEY = APIKEY, pagetoken = "&pagetoken="+pagetoken if pagetoken else "")
   response = requests.get(url)
   res = json.loads(response.text)
   bestPlaces = []
   for result in res["results"]:
      index = index + 1;
      info = ";".join(map(str,[result["geometry"]["location"]["lat"],result["geometry"]["location"]["lng"]]))
      bestRoutCur, bestRoutCostCur = findPaths(loc,(result["geometry"]["location"]["lat"],result["geometry"]["location"]["lng"]))
      if bestRoutCostCur < bestCost:
         bestCost = bestRoutCostCur
         bestRoute = bestRoutCur
      if index >= 3:
         break

   arrayOfCoord = []
   speakIndex = 0
   arrayOfCoord.append((lat,lng))
   finalInstructions = ""
   for step in bestRoute:
      curInstructions = step["html_instructions"]
      betterInstructions = curInstructions.replace("<b>", "")
      betterInstructions = betterInstructions.replace("</b>", "")
      betterInstructions = betterInstructions.replace("<div style=\"font-size:0.9em\">", "")
      betterInstructions = betterInstructions.replace("</div>", "")
      finalInstructions = finalInstructions + betterInstructions
      speakIndex = speakIndex + 1
      curLat = step["end_location"]["lat"]
      curLon = step["end_location"]["lng"]
      arrayOfCoord.append((curLat, curLon))


   speak(finalInstructions)
   mixer.init()
   mixer.music.load("output.mp3")
   mixer.music.play()
   getMap(arrayOfCoord)
   
      


def findPaths(loc, secLoc):
    startLat, startLoc = loc
    endLat, endLoc = secLoc
    mode = "walking"
    url = "https://maps.googleapis.com/maps/api/directions/json?origin={startLat},{startLoc}&destination={endLat},{endLoc}&mode=walking&key={APIKEY}".format(startLat = startLat, startLoc = startLoc, endLat = endLat, endLoc = endLoc, APIKEY = APIKEY)
    response = requests.get(url)
    res = json.loads(response.text)
    bestRoute = None
    bestRouteCost = float("inf")
    for result in res["routes"]:
       for leg in result["legs"]:
            curScore = getPathScore(leg["steps"])
            if curScore < bestRouteCost:
                bestRouteCost = curScore
                bestRoute = leg["steps"]
    return (bestRoute, bestRouteCost)


def getPathScore(path):
    totalDuration = 0;
    
    for step in path:
        duration = step["duration"]["value"]
        totalDuration = totalDuration + duration

    totalDistance = 0
    for step in path:
        curLat = step["end_location"]["lat"]
        curLon = step["end_location"]["lng"]
        crimeDataLat = getCrimeDataLat()
        crimeDataLon = getCrimeDataLon()
        for i in range(100):
            totalDistance = totalDistance + getDistance(curLat, crimeDataLat[i], curLon, crimeDataLon[i])

    return totalDistance - totalDuration

def getDistance(curlat, curlon, endlat, endlon):
    return math.sqrt(math.pow(float(curlat) - float(endlat), 2) + math.pow(float(curlon) - float(endlon), 2)) * 10

def getCrimeDataLat():
    client = Socrata("data.baltimorecity.gov", None)
    results = client.get("wsfq-mvij", limit=100)
    results_df = pd.DataFrame.from_records(results)
    return results_df["latitude"]

def getCrimeDataLon():
    client = Socrata("data.baltimorecity.gov", None)
    results = client.get("wsfq-mvij", limit=100)
    results_df = pd.DataFrame.from_records(results)
    return results_df["longitude"]


def getMap(arrayOfCoord):
    with open('./baltimore.geojson') as f:
        baArea = json.load(f)

    baMap = folium.Map(location=[39.296318,-76.592941], tiles='Stamen Toner', zoom_start=14)
    folium.GeoJson(baArea).add_to(baMap)

    hospitalList = [(39.359223, -76.588238), (39.388428, -76.611824), (39.351955, -76.661630), (39.329231, -76.614762), (39.296088, -76.592041), (39.272942, -76.671753),
                    (39.252372, -76.614219), (39.257591, -76.673986), (39.289283, -76.649624), (39.290439, -76.547499), (39.288018, -76.624845), (39.352042, -76.478421),
                    (39.390994, -76.623886), (39.293449, -76.612899), (39.293805, -76.619976), (39.392920, -76.562445), (39.290396, -76.608536), (39.312561, -76.598785),
                    (39.318737, -76.616915), (39.339960, -76.583097), (39.309994, -76.616856), (38.941249, -76.958708), (39.312084, -76.598973), (39.290380, -76.608536),
                    (39.236289, -76.599457), (39.312106, -76.598971), (39.348418, -76.701585), (39.398904, -76.600583)]

    for coord in hospitalList:
       folium.Marker(coord).add_to(baMap)
       

    for coord in arrayOfCoord:
       folium.CircleMarker(coord, radius=3, weight=2, color='red', fill_color='red', fill_opacity=.5).add_to(baMap)
       #folium.Marker(coord).add_to(baMap)
 
    #add lines
    folium.PolyLine(arrayOfCoord, color="red", weight=2.5, opacity=1).add_to(baMap)

    baMap.save('baPointMap.html')

def speak(string):
   # Instantiates a client
   client = texttospeech.TextToSpeechClient()

   # Set the text input to be synthesized
   synthesis_input = texttospeech.types.SynthesisInput(text=string)

   # Build the voice request, select the language code ("en-US") and the ssml
   # voice gender ("neutral")
   voice = texttospeech.types.VoiceSelectionParams(
      language_code='en-US',
      ssml_gender=texttospeech.enums.SsmlVoiceGender.NEUTRAL)

   # Select the type of audio file you want returned
   audio_config = texttospeech.types.AudioConfig(audio_encoding=texttospeech.enums.AudioEncoding.MP3)

   # Perform the text-to-speech request on the text input with the selected
   # voice parameters and audio file type
   response = client.synthesize_speech(synthesis_input, voice, audio_config)
   
   # The response's audio_content is binary.
   with open("output.mp3", 'wb') as out:
      # Write the response to the output file.
      out.write(response.audio_content)
      print('Audio content written to file output.mp3')


if __name__ == '__main__':
   val = input("Please input a name of a place in Baltimore: ")
   coords = getCoord(val)
   findPlaces(coords)

