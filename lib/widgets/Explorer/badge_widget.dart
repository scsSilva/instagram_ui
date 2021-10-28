import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String label;

  const BadgeWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 20,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900],
        ),
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}
