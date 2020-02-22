import 'package:flutter/material.dart';

class HelplineRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helpline Route"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        SizedBox(
        width: 350,
        height: 100,
        child: RaisedButton(
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFCBB6D4)),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GroundingRoute()),
            );
          },
          child: Text('Contact a Friend'),
        ),
      ),
      SizedBox(
        height:40,
        width: double.infinity,
      ),
      SizedBox(
        width: 350,
        height: 100,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelplineRoute()),
            );
          },
          child: Text('National Sexual Assault Helpline'),
        ),
      ),
      SizedBox(
        height:40,
      ),
      SizedBox(
        width:350,
        height: 100,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmergencyRoute()),
            );
          },
          child: Text('Turnaround Inc. Hotline'),
        ),
      ),
      SizedBox(
        height:40,
        width: double.infinity,
      ),
      SizedBox(
        width: 350,
        height: 100,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SupportRoute()),
            );
          },
          child: Text('Maryland Legal Consult'),
        ),
      ),

    );
  }
}