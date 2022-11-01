import 'dart:ui';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smarty home',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Home(),
      scrollBehavior: MyScrollBehavior(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices {
    return {
      PointerDeviceKind.mouse,
      PointerDeviceKind.touch,
    };
  }
}
