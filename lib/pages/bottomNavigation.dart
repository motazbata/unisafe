import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:unisafe/pages/find_item.dart';
import 'package:unisafe/pages/home.dart';
import 'package:unisafe/pages/notification.dart';
import 'package:unisafe/pages/rebort.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _HomePageState();
}

class _HomePageState extends State<bottomNavigation> {
  int _selectedIndex = 1; // intil index where start
  void _navigationbootembar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const FindItem(),
    const HomePageu(),
    const Reobrt(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
       make the appbar behind the back ground  
      extendBodyBehindAppBar: true,
      */
      //appbar
      appBar: AppBar(
          backgroundColor: const Color(0xff6CC2FF),
          elevation: 8,
          //notifications icon
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NotificationsApp();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.notifications),
            )
          ]),
      drawer: Drawer(
        // list of seetings in the left bar
        child: Container(
          color: Colors.lightBlue,
          child: ListView(
            children: [
              const DrawerHeader(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: const Text(
                  'My Profile',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                onTap: () {
                  // open profile he user
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
                title: const Text(
                  'Dark them',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                onTap: () {
                  // change to dark mode
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                title: const Text(
                  'Language ',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                onTap: () {
                  // change to dark mode
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.8,
                height: 20,
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text(
                  'Logout ',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                onTap: () {
                  // change to dark mode
                },
              )
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.blueGrey[50],
      bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          onTap: _navigationbootembar,
          backgroundColor: const Color(0xff0095FF),
          items: const [
            Icon(Icons.report),
            Icon(Icons.home),
            Icon(Icons.find_in_page_outlined),
          ]),
    );
  }
}
