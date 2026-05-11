import 'package:flutter/material.dart';
import 'package:moviebase/model/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final bool isGrid;
  const MovieCard({super.key, required this.movie, required this.isGrid});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: isGrid
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(movie.banner, fit: BoxFit.contain),
                  ),
                ),
                Text(
                  movie.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(movie.director),
                Text(movie.launchDate),
                Text(movie.studio.name),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                spacing: 8,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset(movie.banner, fit: BoxFit.contain),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        movie.name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(movie.director),
                      Text(movie.launchDate),
                      Text(movie.studio.name),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
