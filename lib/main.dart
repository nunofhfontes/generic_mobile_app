import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:generic_app/widgets/PasswordInput.dart';

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
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF9AC433)),
                  child: Text('Definitions'),
                ),
                ListTile(
                  title: Text('toggle appBar'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('toggle Theme'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: new Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(color: Color(0xFF8091A5)),
                        prefixIcon: Icon(
                          Icons.perm_identity_outlined,
                          color: Color(0xFF8091A5),
                        ),
                        filled: true,
                        fillColor: Color(0xFFCDD5DD),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFCDD5DD)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      // keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  PasswordInput(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(
                      // style: ButtonStyle(
                      //   backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      // ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  new Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        'Don\'t have an account?',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.grey),
                      )),
                  new Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'SIGN UP NOW',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF9AC433)),
                      )),
                  new Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Terms & Conditions',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
