import 'package:flutter/material.dart';

class SearchMovieTextField extends StatefulWidget {
  final ValueChanged<String> onSearchMovie;
  final VoidCallback onClear;
  final TextEditingController _movieSearchController;
  const SearchMovieTextField({
    super.key,
    required this.onSearchMovie,
    required this.onClear,
    required TextEditingController movieSearchController,
  }) : _movieSearchController = movieSearchController;

  @override
  State<SearchMovieTextField> createState() => _SearchMovieTextFieldState();
}

class _SearchMovieTextFieldState extends State<SearchMovieTextField> {
  _SearchMovieTextFieldState();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._movieSearchController,
      onChanged: widget.onSearchMovie,
      decoration: InputDecoration(
        labelText: "Digite o nome do filme",
        border: OutlineInputBorder(),
        suffixIcon: widget._movieSearchController.text != ""
            ? IconButton(onPressed: widget.onClear, icon: Icon(Icons.clear))
            : null,
      ),
    );
  }
}
