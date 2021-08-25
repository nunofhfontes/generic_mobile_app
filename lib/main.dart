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
          primaryColor: const Color(0xFFF0F2F6)),
      home: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
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
            margin: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
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
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password'
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => {},
                  color: Colors.orange,
                  padding: EdgeInsets.all(10.0),
                  child: Column( // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(Icons.add),
                      Text("Add")
                    ],
                  ),
                ),
                new Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      'Don\'t have an account?',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    )
                ),
                new Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'SIGN UP NOW',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                ),
                new Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Terms & Conditions',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
