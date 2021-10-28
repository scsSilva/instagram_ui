import 'package:flutter/material.dart';
import 'package:ui_instagram/pages/wrapper_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Instagram',
      theme: ThemeData.dark(),
      home: WrapperPage(),
    );
  }
}
