import 'package:flutter/material.dart';
import 'package:flutter_responsive/responsive/desktop.dart';
import 'package:flutter_responsive/responsive/mobile.dart';
import 'package:flutter_responsive/responsive/responsive_scaffold.dart';
import 'package:flutter_responsive/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const Responsive(
        mobileScaffold: Mobile(),
        tabletScaffold: Tablet(),
        desktopScaffold: Desktop(),
      ),
    );
  }
}
