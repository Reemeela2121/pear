import 'package:flutter/material.dart';
import 'fake.dart';

class EmergencyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency Resources"),
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
        children: <Widget> [
          Container(
            width: 500,
            height:200,
            child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/caleria3.png"),
          ),
          Container(
            height: 50,
          ),
          Container(
            child: Text("Feeling unsafe?", style: TextStyle(
              color: Color(0xFF908383),
                fontSize: 15.0,

            ),textAlign: TextAlign.center,

            ),
          ),
          Container(
            height: 50,
          ),
          RaisedButton(
              color: Color(0xFFCBB6D4),
              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
              child: Text('S A F E  R O U T E S',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  )),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          Container(
            height: 50,
          ),
          RaisedButton(
              color: Color(0xFFCBB6D4),
              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
              child: Text('P L A C E S  T O  G E T  H E L P',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  )),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}