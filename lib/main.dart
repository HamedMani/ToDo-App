import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/homepage.dart';


void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: MaterialColor(0xFFE0B3A5, {
          50: Color(0xFFE0B3A5),
          100: Color(0xFFD8A59A),
          200: Color(0xFFC79B8F),
          300: Color(0xFFB59284),
          400: Color(0xFFA48979),
          500: Color(0xFFE0B3A5), //  primary color
          600: Color(0xFF8A7F6E),
          700: Color(0xFF7A7563),
          800: Color(0xFF6A6B58),
          900: Color(0xFF5A614D),
        }),)
    );
  }
}
