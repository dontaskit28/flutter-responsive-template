import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/my_boxes.dart';
import 'package:flutter_responsive/widgets/widgets.dart';

import '../widgets/my_tile.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      // drawer: const MyDrawer(),
      body: Column(
        children: const [
          MyBoxes(
            aspectRatio: 1,
            crossAxisCount: 2,
          ),
          Expanded(child: MyTile()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
