import 'package:flutter/material.dart';
import 'package:moviebase/ui/screens/movie_base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MovieBaseScreen();
  }
}
