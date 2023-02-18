import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/widgets.dart';

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
      drawer: myDrawer(context),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return myBox();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return myTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
