import 'package:moviebase/model/movie.dart';
import 'package:moviebase/model/studio.dart';
import 'package:moviebase/repository/studio_repository.dart';

List<Movie> getAllMovies() {
  return [
    //Syncopy
    Movie(
      name: "Interestelar",
      launchDate: "06/11/2014",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/interestelar_banner.png",
    ),
    Movie(
      name: "Oppenheimer",
      launchDate: "20/07/2023",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/oppenheimer_banner.png",
    ),
    Movie(
      name: "Tenet",
      launchDate: "29/10/2020",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/tenet_banner.png",
    ),
    Movie(
      name: "A Origem",
      launchDate: "06/08/2010",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/a_origem_banner.png",
    ),
    Movie(
      name: "Dunkirk",
      launchDate: "27/07/2017",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/dunkirk_banner.png",
    ),
    Movie(
      name: "Batman Begins",
      launchDate: "17/06/2005",
      director: "Christopher Nolan",
      studio: syncopy,
      banner: "assets/images/batman_begins_banner.png",
    ),

    //Universal
    Movie(
      name: "Tubarão",
      launchDate: "25/12/1975",
      director: "Steven Spielberg",
      studio: universal,
      banner: "assets/images/tubarao_banner.png",
    ),
    Movie(
      name: "E.T.: O Extraterrestre",
      launchDate: "25/12/1982",
      director: "Steven Spielberg",
      studio: universal,
      banner: "assets/images/et_banner.png",
    ),
    Movie(
      name: "A Lista de Schindler",
      launchDate: "31/12/1993",
      director: "Steven Spielberg",
      studio: universal,
      banner: "assets/images/a_lista_de_schindler_banner.png",
    ),
    Movie(
      name: "Cassino",
      launchDate: "15/03/1996",
      director: "Martin Scorsese",
      studio: universal,
      banner: "assets/images/cassino_banner.png",
    ),

    //Warner
    Movie(
      name: "Barbie",
      launchDate: "20/07/2023",
      director: "Greta Gerwig",
      studio: warner,
      banner: "assets/images/barbie_banner.png",
    ),
    Movie(
      name: "Coringa",
      launchDate: "03/10/2019",
      director: "Todd Phillips",
      studio: warner,
      banner: "assets/images/coringa_banner.png",
    ),
    Movie(
      name: "Matrix",
      launchDate: "21/05/1999",
      director: "Lana Wachowski, Lilly Wachowski",
      studio: warner,
      banner: "assets/images/matrix_banner.png",
    ),

    //Paramount
    Movie(
      name: "Titanic",
      launchDate: "16/01/1998",
      director: "James Cameron",
      studio: paramount,
      banner: "assets/images/titanic_banner.png",
    ),
    Movie(
      name: "O Poderoso Chefão",
      launchDate: "07/07/1972",
      director: "Francis Ford Coppola",
      studio: paramount,
      banner: "assets/images/poderoso_chefao_banner.png",
    ),

    //Marvel
    Movie(
      name: "Vingadores: Ultimato",
      launchDate: "25/04/2019",
      director: "Joe Russo, Anthony Russo",
      studio: marvel,
      banner: "assets/images/vingadores_ultimato_banner.png",
    ),
    Movie(
      name: "Vingadores: Guerra Infinita",
      launchDate: "26/04/2018",
      director: "Joe Russo, Anthony Russo",
      studio: marvel,
      banner: "assets/images/vingadores_guerra_infinita_banner.png",
    ),
    Movie(
      name: "Homem-Aranha: Sem Volta Para Casa",
      launchDate: "16/12/2021",
      director: "Jon Watts",
      studio: marvel,
      banner: "assets/images/homem_aranha_marvel_banner.png",
    ),

    //Disney
    Movie(
      name: "O Rei Leão",
      launchDate: "08/07/1994",
      director: "Roger Allers, Rob Minkoff",
      studio: disney,
      banner: "assets/images/rei_leao_banner.png",
    ),
    Movie(
      name: "Frozen: Uma Aventura Congelante",
      launchDate: "03/01/2014",
      director: "Chris Buck, Jennifer Lee",
      studio: disney,
      banner: "assets/images/frozen_banner.png",
    ),
    Movie(
      name: "A Bela e a Fera",
      launchDate: "10/07/1992",
      director: "Gary Trousdale, Kirk Wise",
      studio: disney,
      banner: "assets/images/bela_e_a_fera_banner.png",
    ),

    //Columbia
    Movie(
      name: "Taxi Driver",
      launchDate: "22/03/1976",
      director: "Martin Scorsese",
      studio: columbia,
      banner: "assets/images/taxi_driver_banner.png",
    ),
    Movie(
      name: "Django Livre",
      launchDate: "18/01/2013",
      director: "Quentin Tarantino",
      studio: columbia,
      banner: "assets/images/django_banner.png",
    ),
  ];
}

List<Movie> getMoviesByStudio(Studio studio) {
  return getAllMovies().where((movie) => movie.studio == studio).toList();
}

List<Movie> getMoviesByName(String name) {
  return getAllMovies()
      .where((movie) => movie.name.toLowerCase().contains(name))
      .toList();
}

List<Movie> getMoviesByStudioAndName(Studio studio, String name) {
  return getMoviesByStudio(
    studio,
  ).where((movie) => movie.name.toLowerCase().contains(name)).toList();
}
