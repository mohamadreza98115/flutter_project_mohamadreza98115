import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/screens/body.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';

import '../constants.dart';
import '../size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Furniture app'),
            ),
            const ListTile(
              title: Text('Home'),
            ),
            const ListTile(
              title: Text('Products'),
            ),
            ListTile(
              title: const Text('Exit'),
              onTap: () {
                FlutterExitApp.exitApp(iosForceExit: true);
              },
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.qr_code_scanner),
        iconSize: SizeConfig.defaultSize * 2.4, //24
        color: Colors.black,
      ),
      const Center(
        child: Text(
          "Scan",
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(width: SizeConfig.defaultSize),
    ],
  );
}
