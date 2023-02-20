import 'package:flutter/material.dart';

class MyBoxes extends StatelessWidget {
  final double aspectRatio;
  final int crossAxisCount;
  const MyBoxes(
      {super.key, required this.aspectRatio, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.grey[300],
              ),
            );
          },
        ),
      ),
    );
  }
}
