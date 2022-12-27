import 'package:flutter/material.dart';
import 'package:tagramm/pages/home_page.dart';
import 'package:tagramm/pages/profile_page.dart';
import 'package:tagramm/pages/reels_page.dart';
import 'package:tagramm/pages/search_page.dart';
import 'package:tagramm/pages/shop_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    const SearchPage(),
    const ReelsPage(),
    ShopPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_outlined), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'profile' ),
        ],
      ),
    );
  }
}
