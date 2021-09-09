import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:generic_app/screens/HomePageScreen.dart';
import 'package:generic_app/widgets/HomePageDrawer.dart';


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
          drawer: HomePageDrawer(),
          body: HomePageScreen(),
        ),
      ),
    );
  }
}






