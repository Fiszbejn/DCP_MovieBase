import 'package:flutter/material.dart';
import 'package:moviebase/ui/components/movie_base_logo.dart';

class MovieBaseAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MovieBaseAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: MovieBaseLogo(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
