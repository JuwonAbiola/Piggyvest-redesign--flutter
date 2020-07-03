import 'package:flutter/material.dart';
import 'screens/container_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Color(0xFF0066F5),
        primaryColor: Colors.deepOrange
      ),
      home: ContainerScreen(),
    );
  }
}
