import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18, //16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
