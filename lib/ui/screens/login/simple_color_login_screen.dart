import 'package:flutter/material.dart';
import 'package:flutter_gallery/app/app_routes.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_constants.dart';
import 'package:flutter_gallery/ui/widgets/simple_color_rounded_button.dart';
import 'package:flutter_gallery/ui/widgets/simple_color_rounded_form.dart';

class SimpleColorLoginScreen extends StatefulWidget {
  @override
  _SimpleColorLoginScreenState createState() => _SimpleColorLoginScreenState();
}

class _SimpleColorLoginScreenState extends State<SimpleColorLoginScreen> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: backgroundColor,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  ClipOval(
                      child:
                          Image.asset('assets/login/simple_color/avatar.png')),
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
                        SimpleColorRoundedForm(
                          text: 'Email',
                          obscureText: false,
                        ),
                        SimpleColorRoundedForm(
                          text: 'Password',
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  ),
                  SimpleColorRoundedButton(
                    text: 'Login',
                    color: Colors.orange[800],
                    onTap: _onTapLogin,
                  ),
                  SimpleColorRoundedButton(
                    text: 'Register',
                    color: Colors.transparent,
                    onTap: _onTapRegister,
                  ),
                ],
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
          )),
        ],
      ),
    );
  }

  void _onTapLogin() {
    Navigator.pushNamed(
      context,
      FlutterGalleryAppRoutes.welcomeSimpleColor,
    );
  }

  void _onTapRegister() {
    Navigator.pushNamed(
      context,
      FlutterGalleryAppRoutes.registerSimpleColor,
    );
  }
}
