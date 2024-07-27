import 'package:flutter/material.dart';
import 'package:notes_app_assignment/app/notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }

  Scaffold home() {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: navigationBar(),
      body: <Widget>[
        /// Home page
        const Text('data'),

        /// Notes page
        const Notes(),

        /// Account page
        const Text('Hello'),
      ][currentPageIndex],
    );
  }

  Widget navigationBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.amber,
            width: 0.3,
          ),
        ),
      ),
      child: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        backgroundColor: Colors.black,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notes),
            label: 'Notes',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
