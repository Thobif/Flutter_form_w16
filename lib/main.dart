import 'package:flutter/material.dart';

    class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super (key: key);

  @override
      Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App TextField"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(accountName: Text("Mark Zuckerberg"), accountEmail: Text("Mark@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.google.com/search?q=mark+zuckerberg&rlz=1C1ONGR_enTH953TH953&sxsrf=APq-WBt_til1nMyQ2sO0ap2gmBvBarJAtw:1645795171607&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiags7k-Jr2AhXM73MBHYvHCOYQ_AUoAXoECAEQAw&biw=1536&bih=722&dpr=1.25#imgrc=KYqOT0gUhM5qHM"),
                ),),
            ListTile(
              title: Text("Home",style: TextStyle(color: Colors.amber,fontSize: 15)),
              leading: Icon(Icons.home,color: Colors.indigo,size: 30),
             onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
             },
            ),
          ],
        ),
      ),
    );
  }
    }