
import 'package:bloc_clean_coding/model/movies/movie_list_model.dart';

import 'movies_api_repository.dart';

class MoviesMockApiRepository implements MoviesApiRepository {
  @override
  Future<MovieListModel> getMovies() async {
    await Future.delayed(const Duration(seconds: 2));
    // Mock response data
    dynamic responseData = {
      "total": "25369",
      "page": 1,
      "pages": 1269,
      "tv_shows": [
        {
          "id": 35624,
          "name": "The Flash",
          "permalink": "the-flash",
          "start_date": "2014-10-07",
          "end_date": null,
          "country": "US",
          "network": "The CW",
          "status": "Ended",
          "image_thumbnail_path":
          "https://static.episodate.com/images/tv-show/thumbnail/35624.jpg"
        }
      ]
    };
    return MovieListModel.fromJson(responseData);
  }
}