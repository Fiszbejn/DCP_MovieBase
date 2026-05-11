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
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Movie",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                TextSpan(
                  text: "Base",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 112, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
