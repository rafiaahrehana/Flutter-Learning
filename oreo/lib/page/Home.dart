import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 1,
        centerTitle: true,
        title: const Text("Welcome to Oreo",
        style: TextStyle(color: Colors.white),
      ),
    ),

      body: const Center(
        child: Text("data",
        style:TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800,
        color: Colors.teal),
      ),
      ),
    );
  }
}
