import 'package:flutter/material.dart';
import 'package:todoapp/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //HomeView from home_view.dart
        home: const HomeView(),
        debugShowCheckedModeBanner: false);
  }
}
