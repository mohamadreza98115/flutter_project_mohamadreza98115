import 'package:flutter/material.dart';
import 'package:flutter_project_mohamadreza98115/constants.dart';
import 'package:flutter_project_mohamadreza98115/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
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
