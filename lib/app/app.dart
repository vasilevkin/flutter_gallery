import 'package:flutter/material.dart';
import 'package:flutter_gallery/app/app_routes.dart';
import 'package:flutter_gallery/ui/screens/login/login_list_screen.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_login_screen.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_register_screen.dart';
import 'package:flutter_gallery/ui/screens/login/simple_color_welcome_screen.dart';
import 'package:flutter_gallery/ui/screens/main_screen.dart';

class FlutterGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        FlutterGalleryAppRoutes.home: (_) => MainScreen(),
        FlutterGalleryAppRoutes.loginList: (_) => LoginListScreen(),
        FlutterGalleryAppRoutes.loginSimpleColor: (_) =>
            SimpleColorLoginScreen(),
        FlutterGalleryAppRoutes.registerSimpleColor: (_) =>
            SimpleColorRegisterScreen(),
        FlutterGalleryAppRoutes.welcomeSimpleColor: (_) =>
            SimpleColorWelcomeScreen(),
      },
    );
  }
}
