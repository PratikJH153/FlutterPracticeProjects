import 'package:flutter/material.dart';
import '../model/movie_response.dart';
import '../repositories/repository.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  final UserRepository _repository = UserRepository();
  final dynamic _subject = BehaviorSubject<MovieResponse>();

  getMovie(int genre, int minImdb) async {
    MovieResponse response = await _repository.getMovie(genre, minImdb);
    _subject.sink.add(response);
  }

  void drainStream() {
    _subject.value = null;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final movieBloc = MovieBloc();
