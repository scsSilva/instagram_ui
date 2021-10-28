import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Like'),
      ),
      body: Center(
        child: Text('Like page'),
      ),
    );
  }
}
