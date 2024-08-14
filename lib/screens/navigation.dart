import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tackles/screens/home_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children:const [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOutQuart,
        backgroundColor: Colors.white,
        color: const Color.fromARGB(221, 5, 2, 63),
        animationDuration: const Duration(milliseconds: 100),
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.file_copy,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.save_rounded,
            color: Colors.white,
            size: 25,
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
