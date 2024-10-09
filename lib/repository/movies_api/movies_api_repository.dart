
import 'package:bloc_clean_coding/model/movies/movie_list_model.dart';

abstract class MoviesApiRepository {
  Future<MovieListModel> getMovies();
}