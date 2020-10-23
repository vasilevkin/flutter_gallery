import 'package:flutter/material.dart';

class SimpleColorRoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onTap;

  SimpleColorRoundedButton({
    this.text = 'No name',
    this.color = Colors.red,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0),
              side: BorderSide(
                color: color,
              )),
          onPressed: onTap,
          color: color,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
