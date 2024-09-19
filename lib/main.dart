import 'package:contact_form/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Contact Form',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _message = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Contact Form',
          style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller: _name,
             decoration: const InputDecoration(
               border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
               labelText: 'Enter name here:'
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller: _email,
             decoration: const InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                 labelText: 'Enter email here:'
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller: _message,
             decoration: const InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                 labelText: 'Enter message here:'
             ),
           ),
         ),
         const SizedBox(height: 20),

         ElevatedButton(
           onPressed: ()
           {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              WelcomePage(name: _name.text, email: _email.text, message: _message.text)
          ),
          );
         },
           child:  const Text(
             'Go to Next Page',
             style: TextStyle(
                 color: Colors.blue, fontSize: 18,),
           ),
         ),
       ],
     ),
    );
  }
}
