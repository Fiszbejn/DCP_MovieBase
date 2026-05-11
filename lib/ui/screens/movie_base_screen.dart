import 'package:flutter/material.dart';
import 'package:moviebase/model/movie.dart';
import 'package:moviebase/model/studio.dart';
import 'package:moviebase/repository/movie_repository.dart';
import 'package:moviebase/repository/studio_repository.dart';
import 'package:moviebase/ui/components/movie_base_appbar.dart';
import 'package:moviebase/ui/components/movie_card.dart';
import 'package:moviebase/ui/components/search_movie_text_field.dart';
import 'package:moviebase/ui/components/studio_card.dart';

class MovieBaseScreen extends StatefulWidget {
  const MovieBaseScreen({super.key});

  @override
  State<MovieBaseScreen> createState() => _MovieBaseScreenState();
}

class _MovieBaseScreenState extends State<MovieBaseScreen> {
  final TextEditingController _movieSearchController = TextEditingController();
  late List<Movie> movieListState;
  late List<Studio> studioListState;
  Studio? showingStudio;
  bool isGrid = true;

  @override
  void initState() {
    super.initState();
    movieListState = getAllMovies();
    studioListState = getAllStudios();
    _movieSearchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _movieSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieBaseAppbar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  itemBuilder: (context, index) {
                    final studio = studioListState[index];
                    return StudioCard(
                      studio: studio,
                      onClick: (studio) => {
                        setState(() {
                          movieListState = getMoviesByStudio(studio);
                          showingStudio = studio;
                        }),
                      },
                    );
                  },
                  separatorBuilder: (_, _) => const SizedBox(width: 16),
                  itemCount: getAllStudios().length,
                ),
              ),

              SizedBox(height: 16),

              Divider(),
              Row(
                children: [
                  Text(
                    showingStudio == null ? "Todos" : showingStudio!.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(flex: 1),
                  if (showingStudio != null)
                    IconButton(
                      onPressed: () => {
                        setState(() {
                          movieListState = getAllMovies();
                          _movieSearchController.clear();
                          showingStudio = null;
                        }),
                      },
                      icon: Icon(Icons.delete),
                    ),
                  SizedBox(width: 8),
                  IconButton(
                    onPressed: () => {
                      setState(() {
                        isGrid = !isGrid;
                      }),
                    },
                    icon: Icon(isGrid ? Icons.list : Icons.grid_view),
                  ),
                ],
              ),
              Divider(),

              SearchMovieTextField(
                movieSearchController: _movieSearchController,
                onSearchMovie: (String value) {
                  setState(() {
                    showingStudio == null
                        ? movieListState = getMoviesByName(value)
                        : movieListState = getMoviesByStudioAndName(
                            showingStudio!,
                            value,
                          );
                  });
                },
                onClear: () {
                  setState(() {
                    _movieSearchController.clear();
                    showingStudio == null
                        ? movieListState = getAllMovies()
                        : movieListState = getMoviesByStudio(showingStudio!);
                  });
                },
              ),

              SizedBox(height: 16),

              if (!isGrid)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final Movie movie = movieListState[index];
                      return MovieCard(movie: movie, isGrid: isGrid);
                    },
                    itemCount: movieListState.length,
                  ),
                )
              else
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.80,
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                        ),
                    itemBuilder: (context, index) {
                      final Movie movie = movieListState[index];
                      return MovieCard(movie: movie, isGrid: isGrid);
                    },
                    itemCount: movieListState.length,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
