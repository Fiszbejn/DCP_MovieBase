import 'package:moviebase/model/studio.dart';

class Movie {
  final String name;
  final String launchDate;
  final String director;
  final Studio studio;
  final String banner;

  Movie({
    required this.name,
    required this.launchDate,
    required this.director,
    required this.studio,
    required this.banner,
  });
}
