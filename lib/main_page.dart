import 'package:flutter/material.dart';
import 'package:instagramhome_ui/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // bikin variable untuk select icon
  int _selectedIndex = 0;

  // function ontap
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List page
  List<Widget> pages = [
    // masukan homepage di index 0
    HomePage(),
    const Center(
      child: Text(
        "Search",
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        "Reels",
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        "Shop",
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        "Account",
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // masukan list pages indexnya
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.black,
          // untuk index icon nya
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 0 ? Icons.home : Icons.home_outlined),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 1 ? Icons.search : Icons.search_outlined),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(_selectedIndex == 2
                    ? Icons.video_call
                    : Icons.video_call_outlined),
                label: "Reels"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 3 ? Icons.shop : Icons.shop_outlined),
                label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(
                    _selectedIndex == 4 ? Icons.person : Icons.person_outlined),
                label: "Account"),
          ]),
    );
  }
}
