import 'package:flutter/material.dart';

import 'pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('D'),
              ),
              accountName: Text(
                'David',
              ),
              accountEmail: Text(
                'David@email.com',
              ),
            ),
            ListTile(
              title: const Text(
                'Item 1',
              ),
              trailing: const Icon(
                Icons.arrow_forward,
              ),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(
                  () {
                    indexBottomNavigationBar = 0;
                  },
                );
              },
            ),
            ListTile(
              title: const Text(
                'Item 2',
              ),
              trailing: const Icon(
                Icons.arrow_circle_down,
              ),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(
                  () {
                    indexBottomNavigationBar = 1;
                  },
                );
              },
            ),
            ListTile(
              title: const Text(
                'Item 3',
              ),
              trailing: const Icon(
                Icons.arrow_downward,
              ),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(
                  () {
                    indexBottomNavigationBar = 2;
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,
        onTap: (int page) {
          setState(
            () {
              indexBottomNavigationBar = page;
            },
          );
          _pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
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
