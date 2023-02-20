import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/drawer.dart';
import 'package:flutter_responsive/widgets/my_boxes.dart';
import 'package:flutter_responsive/widgets/widgets.dart';

import '../widgets/my_tile.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: MyDrawer(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: const [
                MyBoxes(
                  aspectRatio: 4,
                  crossAxisCount: 4,
                ),
                Expanded(child: MyTile()),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.grey[300],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
