import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:generic_app/widgets/PasswordInput.dart';
import 'package:generic_app/widgets/UserNameInput.dart';

import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              UserNameInput(),
              PasswordInput(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  // ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print("SUBMIT button pressed");
                    this.testSubmit('just_a_title');
                  },
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
    );
  }

  Future<void> testSubmit(String title) {
    return http.post(
      Uri.parse('http://10.0.2.2:3000/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': 'testmail@testmail.com',
        'password': 'flutter_secret_password'
      }),
    );
  }

  // Future<htp.Response> testSubmit(String title) {
  //   return http.post(
  //     Uri.parse('http://localhost:3000/login'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'email': 'testmail@testmail.com',
  //       'password': 'secret_password'
  //     }),
  //   );
  // }

  Future<void> _submit() async {
    // setState(() {
    //   _isLoading = true;
    // });
    // Log user in
    // await Provider.of<Auth>(context, listen: false).login(
    //   _authData['email'],
    //   _authData['password'],
    // );
    // setState(() {
    //   _isLoading = false;
    // });
  }

// Future<Album> createAlbum(String title) async {
//   final response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );
//
//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create album.');
//   }
// }

}
