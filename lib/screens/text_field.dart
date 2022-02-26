import "package:flutter/material.dart";

class TextFieldDemo extends StatefulWidget {
  static String id = "/profile";
  const TextFieldDemo ({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
  String name = "" ;


class _TextFieldDemoState extends State<TextFieldDemo>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Handle User Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
 child: Form(
  key: _formkey,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.teal)),
            TextFormField(
              validator: (value) {
    if(value!.length < 3) {
      return  "Password should be more than 3 characters";
  }
    return null;
  },
  onSaved: (value) {
                print("Password field is Saved");
  },

              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: () {
              if(_formkey.currentState!.validate() == true){
                _formkey.currentState!.save();
                print("Form Submited Successfully");
  }
            }, child: Text("Print"))
          ],
        ),
      ),
    );
  }
  }
}



