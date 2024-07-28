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

  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.orange.shade800;
  final _selectedBgColor = Colors.orange.shade800;
  final _unselectedBgColor = Colors.black;

  Color _getBgColor(int index) =>
      currentPageIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      currentPageIndex == index ? _selectedItemColor : _unselectedItemColor;

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

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

        /// Settings page
        const Text('Hello'),
      ][currentPageIndex],
    );
  }

  Widget navigationBar() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.orange.shade800,
            width: 2,
          ),
        ),
      ),
      child: BottomNavigationBar(
        selectedFontSize: 0,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/icons/home.png', 0, 'Home'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/icons/notes.png', 1, 'Notes'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/icons/account.png', 2, 'Account'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon('assets/images/icons/settings.png', 3, 'Account'),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String image, int index, String text) => Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Material(
          color: _getBgColor(index),
          child: IconButton(
            color: _getItemColor(index),
            padding: const EdgeInsets.all(12),
            icon: Image.asset(
              image,
              color: _getItemColor(index),
            ),
            onPressed: () => _onItemTapped(index),
          ),
        ),
      );
}
