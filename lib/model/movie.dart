import 'package:equatable/equatable.dart';
import 'package:moviebase/model/studio.dart';

class Movie extends Equatable {
  final String name;
  final String launchDate;
  final String director;
  final Studio studio;
  final String banner;

  const Movie({
    required this.name,
    required this.launchDate,
    required this.director,
    required this.studio,
    required this.banner,
  });

  @override
  List<Object?> get props => [name, director, studio];
}
