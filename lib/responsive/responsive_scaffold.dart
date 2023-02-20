import 'package:flutter/material.dart';
import 'mobile.dart';
import 'tablet.dart';
import 'desktop.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const Mobile();
      } else if (constraints.maxWidth < 900) {
        return const Tablet();
      } else {
        return const Desktop();
      }
    });
  }
}
