
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}