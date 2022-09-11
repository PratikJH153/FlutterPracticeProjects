import 'package:netflixblocapp/model/movie.dart';

class MovieResponse {
  final MovieModel movie;
  final String error;

  MovieResponse(
    this.movie,
    this.error,
  );

  MovieResponse.fromJson(Map<String, dynamic> json)
      : movie = MovieModel.fromJson(json),
        error = "";

  MovieResponse.withError(String errorValue)
      : movie = MovieModel("", "", "", "", "", "", 0, "", 0.0),
        error = errorValue;
}
