import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  String name, email, message;


  WelcomePage({required this.name, required this.email, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Welcome Screen',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${name}'),
            Text('Email: ${email}'),
            Text('Message: ${message}'),
          ],
        ),
      ),
    );
  }
}
