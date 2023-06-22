import 'package:flutter/material.dart';
import './../../constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
