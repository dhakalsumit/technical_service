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
        children: [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(186, 0, 65, 114),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.save,
              color: Colors.white,
            ),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 25,
      ),
    );
  }
}
