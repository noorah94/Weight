import 'package:flutter/material.dart';
import 'pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color applicationColor = Color.fromARGB(255, 33, 32, 78);
    return MaterialApp(
      title: 'Weight Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: applicationColor,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: applicationColor,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white30,
          ),
          displaySmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.white30,
            shadowColor: Colors.black,
            elevation: 20,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
