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
class SupportRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Supporting"),
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
                child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/support_buddy.png"),
              ),
            ],
          ),

          SizedBox(
            height: 10,
            width: double.infinity,

          ),
          Container(
            width: 400,
            height: 500,
            child: SizedBox(
                child: RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    child: Text("1. Listen to the survivor. Thank them for trusting you with this information. It can be a very difficult and lonely situation to navigate. Offer them support and let them know you are there for them. \n"
                    "\n"
                    "2. Use phrases that validate their emotions and experiences.Try things like: 'I believe you.' or 'It's not your fault.' Let them know that they did not deserve what happened to them and that you are sorry that this happened. \n"
                    "\n"
                    "3. Offer to accompany them to the hospital or to an authority if they wish to report the incident. You may also wish to offer them an emergency helpline number to call if you do not feel equipped to offer them services or help.\n"
                    "\n"
                    "4. Keep the information you shared between you and your friend. Do not force them to report if they do not feel comfortable doing so. Your priority should be making sure they are okay mentally and physically. Due to the sensitive nature of the topic being discussed, try to keep what you know confidential. \n"

                    "\n"

                    "Thank you for trying to become a supportive friend and advocate! \n",
                        style: TextStyle(
                          color: Color(0xFF908383),

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