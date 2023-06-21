import 'package:flutter/material.dart';
import 'package:flutter_project_mohamadreza98115/screens/home/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          // textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen());
  }
}
