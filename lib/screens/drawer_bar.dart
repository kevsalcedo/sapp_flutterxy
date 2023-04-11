import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapp_flutterxy/screens/home_screen.dart';
import 'package:sapp_flutterxy/screens/profile_screen.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class Destination {
  final String title;
  final IconData icon;
  final String route;

  Destination(this.title, this.icon, this.route);
}

List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, '/home'),
  Destination('Profile', Icons.account_circle, '/profile'),
  Destination('Settings', Icons.settings, '/settings'),
  // Agrega más destinos aquí
];

class _DrawerBarState extends State<DrawerBar> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: allDestinations.map((destination) {
                return ListTile(
                  leading: Icon(destination.icon),
                  title: Text(destination.title),
                  selected: ModalRoute.of(context)?.settings.name ==
                      destination.route,
                  onTap: () {
                    _onItemTapped(_selectedIndex);
                    Navigator.pop(context);
                    //Navigator.pushNamed(context, destination.route);
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
