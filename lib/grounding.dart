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
                        child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/hp1.png"),
                        onPressed: () {}
                    )
                ),
              ),
              Text("    G R O U N D I N G",
                  style: TextStyle(
                    color: Color(0xFFCBB6D4),
                  ), textAlign: TextAlign.center,),
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
        title: Text("Grounding Exercise"),
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
      body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 10,
          ),
          Text("Name one thing you can see in the room.",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("What color is it?",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("What does the texture look like?",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("Name one thing you can smell.",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("Is it a good smell or a bad smell?",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("Finally, name something you can feel.",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            height: 10,
          ),
          Text("What does the texture feel like?",
            style: TextStyle(
              color: Color(0xFF908383),
              fontSize: 16,
            ),textAlign: TextAlign.center,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeelBetter())
                  );

                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class FeelBetter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feel Better?"),
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
          Text( "We hope you’re feeling better. \n If something just happened and you don’t know what to do, \n click “What do I do Next?” to learn what steps \n you should take after recent trauma", style: TextStyle(
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
                    child: Text("WHAT DO I DO NEXT?",
                      style: TextStyle(
                        color: Color(0xFFCBB6D4),
                        fontSize: 15,

                      ),textAlign: TextAlign.center,

                    ) ,
                    onPressed: () {}
                )
            ),
          ),

          RaisedButton(
              color: Color(0xFFCBB6D4),
              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Color(0xFFCBB6D4)),
              ),
              child: Text('H O M E',
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