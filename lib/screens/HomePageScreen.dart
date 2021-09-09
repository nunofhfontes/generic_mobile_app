import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:generic_app/widgets/PasswordInput.dart';
import 'package:generic_app/widgets/UserNameInput.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
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
    );
  }
}