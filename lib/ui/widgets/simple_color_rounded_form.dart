import 'package:flutter/material.dart';

class SimpleColorRoundedForm extends StatelessWidget {
  final String text;
  final bool obscureText;

  SimpleColorRoundedForm({
    @required this.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              labelText: text,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
