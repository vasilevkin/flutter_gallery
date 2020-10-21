import 'package:flutter/material.dart';
import 'package:flutter_gallery/app/app_routes.dart';

class LoginListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Simple Color Login'),
              onTap: () => Navigator.pushNamed(
                  context, FlutterGalleryAppRoutes.loginSimpleColor),
            ),
          )
        ],
      ),
    );
  }
}
