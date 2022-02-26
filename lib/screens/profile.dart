import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String id = "/profild";
  const ProfileScreen ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Text("Profile Screen"),
      ),
    )
  }

}