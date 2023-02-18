import 'package:flutter/material.dart';

Widget myDrawer(context) {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          child: Icon(
            Icons.account_circle,
            size: 100,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('HOME'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('SETTINGS'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.history),
          title: const Text('HISTORY'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('PROFILE'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

Widget myBox() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      color: Colors.grey[300],
    ),
  );
}

Widget myTile() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      color: Colors.grey[300],
      height: 80,
    ),
  );
}

var myAppBar = AppBar(
  backgroundColor: Colors.grey[800],
);
