import 'package:flutter/material.dart';
import 'fake.dart';

class Faq extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [

                Container(
                  width: 500,
                  height:150,
                  child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/buh.png"),
                ),
              ],
            ),

            SizedBox(
              height: 20,
              width: double.infinity,

            ),
            Container(
              width: 300,
              height: 50,
              child: SizedBox(
                  child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                        side: BorderSide(color: Color(0xFFCBB6D4), width: 1),
                      ),
                      child: Text("WHAT DO YOU DO?",
                        style: TextStyle(
                          color: Color(0xFFCBB6D4),
                          fontSize: 15,

                        ),textAlign: TextAlign.center,

                      ) ,
                      onPressed: () {}
                  )
              ),
            ),
            SizedBox(
              height:10,
              width: double.infinity,
            ),
            Text("pear. is... \n",
              style: TextStyle(
                color: Color(0xFF908383),
                fontSize: 16,
              ),textAlign: TextAlign.center,),
            Text( "the Private Emergency-Assisted Response App. \n This application is specifically designed to help \n survivors of sexual violence accessibly navigate different resources with ease.", style: TextStyle(
                color: Color(0xFF908383), fontSize: 14, ),textAlign: TextAlign.center,),
            SizedBox(
              height:10,
              width: double.infinity,
            ),
            Container(
              width: 300,
              height: 50,
              child: SizedBox(
                  child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                        side: BorderSide(color: Color(0xFFCBB6D4), width: 1),
                      ),
                      child: Text("WHO IS ANGELA?",
                        style: TextStyle(
                          color: Color(0xFFCBB6D4),
                          fontSize: 15,

                        ),textAlign: TextAlign.center,

                      ) ,
                      onPressed: () {}
                  )
              ),
            ),
            SizedBox(
              height:10,
              width: double.infinity,
            ),
            Text("‘Angela’ \n",
              style: TextStyle(
                color: Color(0xFF908383),
                fontSize: 16,
              ),textAlign: TextAlign.center,),
            Text( "is named after the ‘Angel Shot’ order used in \n bars which notifies bartenders when someone \n is in an uncomfortable situation.", style: TextStyle(
              color: Color(0xFF908383), fontSize: 14, ),textAlign: TextAlign.center,),
            SizedBox(
              height:10,
              width: double.infinity,
            ),
            Container(
              width: 300,
              height: 50,
              child: SizedBox(
                  child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                        side: BorderSide(color: Color(0xFFCBB6D4), width: 1),
                      ),
                      child: Text("WHAT DOES SA AND SAFE \n STAND FOR?",
                        style: TextStyle(
                          color: Color(0xFFCBB6D4),
                          fontSize: 15,

                        ),textAlign: TextAlign.center,

                      ) ,
                      onPressed: () {}
                  )
              ),
            ),
            SizedBox(
              height:10,
              width: double.infinity,
            ),
            Text("SA and SAFE stand for\n",
              style: TextStyle(
                color: Color(0xFF908383),
                fontSize: 16,
              ),textAlign: TextAlign.center,),
            Text( "‘Sexual assault’ and ‘Sexual Assault Forensic Examination’ \n respectively. For more information, visit the RAINN website \n found on the navigation tab.", style: TextStyle(
              color: Color(0xFF908383), fontSize: 14, ),textAlign: TextAlign.center,),
            SizedBox(
              height:10,
              width: double.infinity,
            ),

            RaisedButton(
                color: Color(0xFFCBB6D4),
                shape: RoundedRectangleBorder(

                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFFCBB6D4)),
                ),
                child: Text('B A C K',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    )),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
          ],

        )
    );
  }
}