import 'package:flutter/material.dart';
import 'text_field.dart';

class HomeScreen extends StatelessWidget {
  static String id = "/home";
  const HomeScreen ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App TextField"),
      ),
      body: const Center(
        child: Text("Contact Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
          title: Text("Home", style: TextStyle(color: Colors.amber,fontSize: 15),),
          leading: Icon(Icons.home, color: Colors.indigo, size: 30,),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomeScreen()));
          },
      )

        ListTitle(
        title: const Text("Mark Zukerberg" , style: TextStyle(color: Colors.amber,fontSize: 15)),
    leading: const Icon(Icons.home , color: Colors.indigo, size: 30),
    onTap: () {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    },
    ),




      ],

      ),
    );
  }
}