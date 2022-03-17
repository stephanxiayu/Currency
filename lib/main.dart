import 'package:flutter/material.dart';
import 'package:geldtracker/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     
     theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightGreen,
          scaffoldBackgroundColor: Colors.grey.shade800),
      home: PriceScreen(),
    );
  }
}

