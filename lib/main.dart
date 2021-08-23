import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(GenericApp());
}

class GenericApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF0F2F6), // #F0F2F6
          primaryColor: const Color(0xFFF0F2F6)
      ),
      home:

      Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/images/github_transparent_logoicon.png",
            fit: BoxFit.contain,
            height: 72,
          ),
          centerTitle: true,
          toolbarHeight: 88,
          elevation: 0,
        ),
        body: new Container(
          // color: Color(0xff258DED),
          margin: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: new Column(
            children: <Widget>[
              new Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'User Name'
                  ),
                ),
              ),
              new Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

