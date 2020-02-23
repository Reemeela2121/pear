import 'package:flutter/material.dart';
import 'fake.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 500.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}

class GroundingRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grounding"),
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
                child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/hp1.png"),
              ),
        ],
          ),

          SizedBox(
            height: 10,
            width: double.infinity,

          ),
          Container(
            width: 300,
            height: 500,
            child: SizedBox(
                child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(400.0),
                      side: BorderSide(color: Color(0xFFCBB6D4), width: 10),
                    ),
                    child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/dandelion_2.gif"),
                    onPressed: () {}
                )
            ),
          ),
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
              child: Text('N E X T',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Survey()),
                );
              }
          ),

          SizedBox(
            height:5,
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

      ),

      );
  }
}

class Survey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey Route"),
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
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}