import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_constants.dart';
import 'package:flutter_gallery/ui/widgets/simple_color_rounded_button.dart';
import 'package:flutter_gallery/ui/widgets/simple_color_rounded_form_with_label.dart';

class SimpleColorRegisterScreen extends StatefulWidget {
  @override
  _SimpleColorRegisterScreenState createState() =>
      _SimpleColorRegisterScreenState();
}

class _SimpleColorRegisterScreenState extends State<SimpleColorRegisterScreen> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: backgroundColor,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Welcome to the App Registration',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text("Let's start by getting your account setup"),
                    Form(
                      key: formKey,
                      autovalidate: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SimpleColorRoundedFormWithLabel(
                            text: 'First Name',
                            hint: 'John',
                            obscureText: false,
                            requiredField: true,
                          ),
                          SimpleColorRoundedFormWithLabel(
                            text: 'Last Name',
                            hint: 'Doe',
                            obscureText: false,
                            requiredField: false,
                          ),
                          SimpleColorRoundedFormWithLabel(
                            text: 'Email',
                            hint: 'johndoe@gmail.com',
                            obscureText: false,
                            requiredField: true,
                          ),
                          SimpleColorRoundedFormWithLabel(
                            text: 'Phone Number',
                            hint: '+1234567890',
                            obscureText: false,
                            requiredField: false,
                          ),
                          SimpleColorRoundedFormWithLabel(
                            text: 'Password',
                            obscureText: true,
                            requiredField: true,
                          ),
                          SimpleColorRoundedFormWithLabel(
                            text: 'Verify Password',
                            obscureText: true,
                            requiredField: true,
                          ),
                        ],
                      ),
                    ),
                    Text('* required fields'),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: IconButton(
              iconSize: 50,
              icon: Icon(Icons.arrow_back),
              color: Colors.orange,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SimpleColorRoundedButton(
                text: 'Submit',
                color: Colors.orange[800],
                onTap: _onTapSubmit,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTapSubmit() {}
}
