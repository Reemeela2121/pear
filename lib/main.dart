import 'package:flutter/material.dart';
import 'emergency.dart';
import 'grounding.dart';
import 'helplines.dart';
import 'support.dart';
import 'fake.dart';
import 'faq.dart';
import 'package:url_launcher/url_launcher.dart' as URLauncher;

import 'package:audioplayers/audio_cache.dart';


class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 200.0),
        decoration: BoxDecoration(color: Colors.grey),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pear.',
      theme: ThemeData(
        //fontFamily: 'RobotoMono',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
          //CBB6D4

        primaryColor: Color(0xFFFFFFFF),
        accentColor: Color(0xFFCBB6D4),

      ),
      home: MyHomePage(title: 'Private Emergency-Assisted Response'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FakeRoute())
              );
            },

          )

        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 150,
            //color: Colors.transparent,
          child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/pearlogo2.png"),
          ),
          SizedBox(
            height:40,
            width: double.infinity,
          ),
          SizedBox(
            width: 400,
            height: 100,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(),
                  child: Padding (
                    padding: EdgeInsets.fromLTRB(60, 60, 60, 0),
                    child: Text("Feeling anxious and can’t calm down? Try these grounding exercises.",
                      style: TextStyle(color: Color(0xFF908383), fontSize: 12.0), textAlign: TextAlign.center,),
                  ),
                  ),
                Align(
                  alignment: Alignment.topCenter,

                  child: Container(

                    width: 200,
                    height: 50,
                    child: SizedBox(
                        child: RaisedButton(
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(

                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFFCBB6D4)),
                            ),
                            child: Text('G R O U N D I N G',
                                style: TextStyle(
                                  color: Color(0xFFCBB6D4),
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => GroundingRoute()),
                              );
                            }
                        )
                    ),
                  ),

                )
              ],
            ),
          ),
          SizedBox(
            height:40,
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(),
                  child: Padding (
                    padding: EdgeInsets.fromLTRB(60, 60, 60, 0),
                    child: Text("Need to talk to someone? Here are some professional resources..",
                      style: TextStyle(color: Color(0xFF908383), fontSize: 12.0), textAlign: TextAlign.center,),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,

                  child: Container(
                    width: 200,
                    height: 50,
                    child: SizedBox(
                        child: RaisedButton(
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(

                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFFCBB6D4)),
                            ),
                            child: Text('H E L P L I N E S',
                                style: TextStyle(
                                  color: Color(0xFFCBB6D4),
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HelplineRoute()),
                              );
                            }
                        )
                    ),
                  ),

                )
              ],
            ),
          ),
          SizedBox(
            height:40,
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(),
                  child: Padding (
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
                    child: Text("Your safety is important. Look for hospitals, shelters, and more in your area.",
                      style: TextStyle(color: Color(0xFF908383), fontSize: 12.0), textAlign: TextAlign.center,),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,

                  child: Container(
                    width: 300,
                    height: 50,
                    child: SizedBox(
                        child: RaisedButton(
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(

                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFFCBB6D4)),
                            ),
                            child: Text('E M E R G E N C Y  R E S O U R C E S',
                                style: TextStyle(
                                  color: Color(0xFFCBB6D4),
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => EmergencyRoute()),
                              );
                            }
                        )
                    ),
                  ),

                )
              ],
            ),
          ),
          SizedBox(
            height:40,
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(),
                  child: Padding (
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
                    child: Text("Learn how to support survivors living with sexual violence trauma.",
                      style: TextStyle(color: Color(0xFF908383), fontSize: 12.0), textAlign: TextAlign.center,),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,

                  child: Container(
                    width: 250,
                    height: 50,
                    child: SizedBox(
                        child: RaisedButton(
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(

                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFFCBB6D4)),
                            ),
                            child: Text('S U P P O R T  O T H E R S',
                                style: TextStyle(
                                  color: Color(0xFFCBB6D4),
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SupportRoute()),
                              );
                            }
                        )
                    ),
                  ),

                )
              ],
            ),
          ),

        ],

      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                //color: Colors.transparent,
                child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/pearflower.png"),
              ),

            ),
            ListTile(
              title: Text('Home'),
              trailing: new Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Grounding Exercises'),
                trailing: new Icon(Icons.toys),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GroundingRoute())
                );
              },
            ),
            ListTile(
              title: Text('Helpline Numbers'),
              trailing: new Icon(Icons.local_car_wash),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelplineRoute())
                );
              },
            ),
            ListTile(
              title: Text('Emergency Resources'),
              trailing: new Icon(Icons.directions_walk),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmergencyRoute())
                );
              },
            ),
            ListTile(
              title: Text('Supporting Others'),
              trailing: new Icon(Icons.looks),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SupportRoute())
                );
              },
            ),
            ListTile(
              title: Text('pear. FAQ'),
              trailing: new Icon(Icons.info_outline),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faq())
                );
              },
            ),
            ListTile(
              title: Text('Turn Around Inc.'),
              trailing: new Icon(Icons.free_breakfast),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                URLauncher.launch('https://turnaroundinc.org/');
              },
            ),
            ListTile(
              title: Text('RAINN National Assn.'),
              trailing: new Icon(Icons.beach_access),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                URLauncher.launch('https://www.rainn.org/');
              },
            ),
            ListTile(
              title: Text('Title IX Information'),
              trailing: new Icon(Icons.assistant),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                URLauncher.launch('https://www2.ed.gov/about/offices/list/ocr/docs/tix_dis.html');
              },
            ),
            ListTile(
              title: Text('SA Legal Definitions'),
              trailing: new Icon(Icons.book),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                URLauncher.launch('https://github.com/pear-pearlhacks/pear/wiki/FAQ,-Links,-Information');
              },
            ),
          ],
        ),
      ),
    );
  }
}
