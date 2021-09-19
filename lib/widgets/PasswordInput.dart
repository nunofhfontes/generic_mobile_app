import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Color(0xFF8091A5)),
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: Color(0xFF8091A5),
            ),
            filled: true,
            fillColor: Color(0xFFCDD5DD),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Color(0xFFCDD5DD)),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(4),
            )
        ),
        onChanged: (value) {
          print("PASSWORD -> The value entered is : $value");
        }
      ),
    );
  }
}