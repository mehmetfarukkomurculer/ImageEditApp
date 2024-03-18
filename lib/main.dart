import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const ImageEditApp());
}

class ImageEditApp extends StatelessWidget {
  const ImageEditApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
