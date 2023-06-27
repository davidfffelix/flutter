import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: const Center(
          child: Text(
            'Olá Mundo!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
