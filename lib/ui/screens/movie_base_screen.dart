import 'package:flutter/material.dart';
import 'package:moviebase/ui/components/movie_base_appbar.dart';

class MovieBaseScreen extends StatelessWidget {
  const MovieBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(appBar: MovieBaseAppbar(), body: Column()),
      ),
    );
  }
}
