import 'package:flutter/material.dart';
import 'package:moviebase/model/studio.dart';

class StudioCard extends StatelessWidget {
  final Studio studio;
  final Function(Studio)? onClick;
  const StudioCard({super.key, required this.studio, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick != null ? () => onClick!(studio) : null,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          shape: const CircleBorder(),
          elevation: 4,
          child: ClipOval(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
              child: Image.asset(studio.logo),
            ),
          ),
        ),
      ),
    );
  }
}
