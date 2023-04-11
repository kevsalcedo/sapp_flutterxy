import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapp_flutterxy/screens/home_screen.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text(
      'Profile',
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      'Settings',
      style: TextStyle(fontSize: 30),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SApp'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Hi my friend!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
