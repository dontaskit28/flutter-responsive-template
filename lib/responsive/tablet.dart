import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/drawer.dart';
import 'package:flutter_responsive/widgets/my_tile.dart';
import 'package:flutter_responsive/widgets/widgets.dart';

import '../widgets/my_boxes.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: const MyDrawer(),
      body: Column(
        children: const [
          MyBoxes(
            aspectRatio: 4,
            crossAxisCount: 4,
          ),
          Expanded(child: MyTile()),
        ],
      ),
    );
  }
}
