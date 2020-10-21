import 'package:flutter/material.dart';
import 'package:flutter_gallery/app/app_routes.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Design Gallery')),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Login'),
                onTap: () => Navigator.pushNamed(
                    context, FlutterGalleryAppRoutes.loginList),
              ),
            )
          ],
        ),
      ),
    );
  }
}
