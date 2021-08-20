import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(GenericApp());
}

class GenericApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Generic App Logo",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

