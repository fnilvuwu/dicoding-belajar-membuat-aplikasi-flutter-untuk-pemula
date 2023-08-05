import 'package:flutter/material.dart';
import 'package:my_resto/pages/splash_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resto',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Plus Jakarta Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
