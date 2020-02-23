import 'package:flutter/material.dart';
import 'fake.dart';
import 'angela.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart' as URLauncher;
import 'dart:convert';

class HelpScreen extends StatefulWidget {
  @override
  HelpScreenState createState() {
    return HelpScreenState();
  }
}

class HelpScreenState extends State<HelpScreen> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    _loadHtmlFromAssets();
    return Scaffold(
      appBar: AppBar(title: Text('Safe Routes')),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/help.html');
    _controller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}

class EmergencyRoute extends StatelessWidget {
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
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              Container(
                width: 150,
                height:150,
                child: SizedBox(
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(400.0),
                          side: BorderSide(color: Color(0xFFCBB6D4), width: 1),
                        ),
                        child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/hp4.png"),
                        onPressed: () {}
                    )
                ),
              ),
              Text("    E M E R G E N C Y  R E S O U R C E S",
                style: TextStyle(
                  color: Color(0xFFCBB6D4),
                ), textAlign: TextAlign.center,),
            ],
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpScreen())
                );

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
          Container(
            height: 50,
          ),
          RaisedButton(
              color: Color(0xFFCBB6D4),
              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
              child: Text('C A L L  A N G E L A',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  )),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExampleApp())
                );
              }
          ),
        ],
      ),
    );
  }
}