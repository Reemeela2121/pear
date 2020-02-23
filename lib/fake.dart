import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 200.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.cover,
        ));
  }
}

class FakeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pop(context);
            },
          )

        ],
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          //color: Colors.transparent,
          child: ImageBanner("/Users/reem/Desktop/pear/ios/Flutter/App.framework/flutter_assets/grubby.png"),
        ),
      ),
    );
  }
}