import 'package:flutter/material.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_constants.dart';

class SimpleColorWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              decoration: backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    ClipOval(
                        child: Image.asset(
                            'assets/login/simple_color/avatar.png')),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Welcome to the app!!',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
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
          )),
        ],
      ),
    );
  }
}
