import 'package:flutter/material.dart';
import 'package:social_network/dashboard.dart';
import 'package:social_network/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 2;
  final List<Widget> _pageList = [
    //HomePage(),
    //AppsPage(),
    //SignIn(),
    //HomePage(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    DashBoard(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList.elementAt(_selectedIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTap,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'search',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'apps',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'contact',
              backgroundColor: Colors.teal),
        ],
      ),
    );
  }
}
