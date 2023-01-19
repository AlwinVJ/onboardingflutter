import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomePage',
          style: TextStyle(color: Colors.indigo),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              height: 500,
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
          child: const Center(
            child: Text(
              'This is your destination',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
            ),
          ),
        )),
      ),
    );
  }
}
