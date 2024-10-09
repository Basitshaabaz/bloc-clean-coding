
import 'package:bloc_clean_coding/model/movies/movie_list_model.dart';
import 'package:bloc_clean_coding/repository/movies_api/movies_api_repository.dart';
import 'package:bloc_clean_coding/utils/app_urls.dart';

import '../../data/network/network_api_service.dart';

class MoviesHttpApiRepository implements MoviesApiRepository {
  final apiService = NetworkApiService();


  @override
  Future<MovieListModel> getMovies() async {
    final response = await apiService.getApi(AppUrl.popularMoviesEndPoint);
    return MovieListModel.fromJson(response);
  }
}