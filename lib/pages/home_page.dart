import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Column(
        children: [
          Container(
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
          Row(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 200,
                child: const Center(
                  child: Text('Container 1'),
                ),
              ),
              Container(
                color: Colors.purple,
                height: 100,
                width: 192.5,
                child: const Center(
                  child: Text('Container 2'),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}
