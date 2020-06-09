import 'package:flutter/material.dart';

import './screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LetGo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue[50],
        accentColor: Colors.red,
        fontFamily: 'GentiumBookBasic',
        textTheme: ThemeData.light().textTheme.copyWith(
          button: TextStyle(color: Colors.white),
          headline6: TextStyle(
            fontSize: 28,
            fontFamily: 'GentiumBookBasic',
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          headline1: TextStyle(
            fontSize: 24,
            fontFamily: 'GentiumBookBasic',
            color: Colors.white
          ),
          headline2: TextStyle(
            fontFamily: 'GentiumBookBasic',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontFamily: 'GentiumBookBasic',
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 28
            )
          ),
        )
      ),
      home: HomeScreen(),
    );
  }
}