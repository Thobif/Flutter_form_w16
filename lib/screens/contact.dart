import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static String id = "/contact";
  const ContactScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Text("Contact Screen"),
      ),
    );
  }
}