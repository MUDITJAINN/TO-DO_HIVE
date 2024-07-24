import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive/util/splashscreen.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();
  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const SplashScreen(),
    );
  }
}