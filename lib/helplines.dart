import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;
import 'fake.dart';

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

class HelplineRoute extends StatelessWidget {
  final String telephoneNumber = "2152531236";
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
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
                        child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/hp2.png"),
                        onPressed: () {}
                    )
                ),
              ),
              Text("    H E L P L I N E S",
                style: TextStyle(
                  color: Color(0xFFCBB6D4),
                ), textAlign: TextAlign.center,),
            ],
          ),
          SizedBox(
            height:20,
            width: double.infinity,
          ),
        SizedBox(
        width: 300,
        height: 50,
        child: RaisedButton(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFCBB6D4)),
          ),
          onPressed: () async {
            String telephoneUrl = "sms:5550101234";

            if (await canLaunch(telephoneUrl)) {
              await launch(telephoneUrl);
            } else {
              throw "Can't phone that number.";
            }
          },
          child: Text('Contact a Friend'),
        ),
      ),
      SizedBox(
        height:20,
        width: double.infinity,
      ),
      SizedBox(
        width: 300,
        height: 50,
        child: RaisedButton(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFCBB6D4)),
          ),
          onPressed: () => _launchURL1(),
          child: Text('National Sexual Assault Helpline'),
        ),
      ),
      SizedBox(
        height:20,
      ),
      SizedBox(
        width:300,
        height: 50,
        child: RaisedButton(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFCBB6D4)),
          ),
          onPressed: () => _launchURL2(),
          child: Text('Turnaround Inc. Hotline'),
        ),
      ),
      SizedBox(
        height:20,
        width: double.infinity,
      ),
      SizedBox(
        width:300,
        height: 50,
        child: RaisedButton(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFCBB6D4)),
          ),
          onPressed: () => _launchURL3(),
          child: Text('Maryland Legal Consult'),
        ),
      ),
          SizedBox(
            height:20,
            width: double.infinity,
          ),
          SizedBox(
            width:350,
            height: 50,
            child: RaisedButton(
              color: Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
              onPressed: () => _launchURL4(),
              child: Text('MD Coalition Against Sexual Assault Hotline'),
            ),
          ),
          SizedBox(
            height:20,
            width: double.infinity,
          ),
          SizedBox(
            width:300,
            height: 50,
            child: RaisedButton(
              color: Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
                onPressed: () async {
                  String telephoneUrl = "sms:741741";

                  if (await canLaunch(telephoneUrl)) {
                    await launch(telephoneUrl);
                  } else {
                    throw "Can't phone that number.";
                  }
                },

              child: Text('Sexual Abuse Crisis Textline'),
            ),
          ),
          SizedBox(
            height:100,
            width: double.infinity,
          ),
    ],
    ),
    );
  }
}

_launchURL() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: "tel", path: "2152531236"))
    ..startActivity().catchError((e) => print(e));
}

_launchURL1() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: "tel", path: "18006564673"))
    ..startActivity().catchError((e) => print(e));
}

_launchURL2() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: "tel", path: "4432790379"))
    ..startActivity().catchError((e) => print(e));
}

_launchURL3() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: "tel", path: "3015652277"))
    ..startActivity().catchError((e) => print(e));
}

_launchURL4() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: "tel", path: "8009837273"))
    ..startActivity().catchError((e) => print(e));
}

_launchURL5() async {
  // Replace 12345678 with your tel. no.

  android_intent.Intent()
    ..setAction(android_action.Action.ACTION_CALL)
    ..setData(Uri(scheme: 'sms', path: '741741'))
    ..startActivity().catchError((e) => print(e));
}