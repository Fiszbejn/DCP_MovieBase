import 'package:flutter/material.dart';

class MovieBaseLogo extends StatelessWidget {
  const MovieBaseLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.live_tv_rounded),
          SizedBox(width: 8),
          Text(
            "MovieBase",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
