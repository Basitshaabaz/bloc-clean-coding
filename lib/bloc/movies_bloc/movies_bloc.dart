import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/data/response/api_response.dart';
import 'package:bloc_clean_coding/model/movies/movie_list_model.dart';
import 'package:bloc_clean_coding/repository/movies_api/movies_api_repository.dart';
import 'package:equatable/equatable.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesApiRepository moviesApiRepository;

  MoviesBloc({required this.moviesApiRepository})
      : super(MoviesState(movieList: ApiResponse.loading())) {
    on<MoviesFetch>(_fetchMoviesApi);
  }

  Future<void> _fetchMoviesApi(
      MoviesFetch event, Emitter<MoviesState> emit) async {
    emit(state.copyWith(movieList: ApiResponse.loading()));

    await moviesApiRepository.getMovies().then((moviesResponse) {
      emit(state.copyWith(movieList: ApiResponse.success(moviesResponse)));
    }).onError((e, s) {
      emit(state.copyWith(movieList: ApiResponse.error(e.toString())));
    });
  }
}
