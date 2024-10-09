part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  final ApiResponse<MovieListModel> movieList;

  const MoviesState({
    required this.movieList,
});

  MoviesState copyWith({
    ApiResponse<MovieListModel>? movieList,
  }) {
    return MoviesState(
      movieList: movieList ?? this.movieList,
    );
  }


  @override
  List<Object> get props => [movieList];
}