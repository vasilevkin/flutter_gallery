import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/widgets/simple_color_rounded_form.dart';

class SimpleColorRoundedFormWithLabel extends StatelessWidget {
  final String text;
  final String hint;
  final bool obscureText;
  final bool requiredField;

  SimpleColorRoundedFormWithLabel({
    @required this.text,
    this.hint = '',
    this.obscureText = false,
    this.requiredField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 15,
            ),
            child: Text(
              text + (requiredField ? ' *' : ''),
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 0),
                child: TextFormField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    // labelText: hint,
                    hintText: hint,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
