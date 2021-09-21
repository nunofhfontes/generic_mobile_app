import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserNameInput extends StatelessWidget {
  const UserNameInput({
    Key? key,
    required void Function(userNameStr) ,
    required this.onChanged
  }) : super(key: key);

  final String userName;
  final ValueChanged<String> onChanged;

  void _handleOnChange(value) {
    onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
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
        // onChanged: (value) {
        //   print("USERNAME -> The value entered is : $value");
        // }
        onChanged: _handleOnChange,
      ),
    );
  }
}