import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_constants.dart';

class SimpleColorLoginScreen extends StatefulWidget {
  @override
  _SimpleColorLoginScreenState createState() => _SimpleColorLoginScreenState();
}

class _SimpleColorLoginScreenState extends State<SimpleColorLoginScreen> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              ClipOval(
                  child: Image.asset('assets/login/simple_color/avatar.png')),
              SizedBox(
                height: 50,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Form(
                key: formKey,
                autovalidate: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    roundedForm('Email', false),
                    roundedForm('Password', true),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Forgot Password?'),
              ),
              roundedButton('Login', Colors.orange[800], () {}),
              roundedButton('Register', Colors.transparent, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget roundedForm(String text, bool obscureText) {
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

            // onChanged: (value) => addCityBloc.queryString.add(value),
          ),
        ),
      ),
    );
  }

  Widget roundedButton(String text, Color color, Function onTap) {
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
          onPressed: () {},
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
