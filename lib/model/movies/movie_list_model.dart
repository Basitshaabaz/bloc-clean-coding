import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_model.freezed.dart';
part 'movie_list_model.g.dart';

@freezed
class MovieListModel with _$MovieListModel {

  factory MovieListModel({
    @Default('') String total,
    @Default(0) int page,
    @Default(0) int totalPage,
    @Default([]) @JsonKey(name: 'tv_shows') List<TvShows> tvShow,
  })=
_MovieListModel;

factory MovieListModel.fromJson(Map<String, dynamic> json) =>
_$MovieListModelFromJson(json);
}

@freezed
class TvShows with _$TvShows {

  factory TvShows({
    @Default('') String name,
    @Default('') String permalink,
    @Default('') @JsonKey(name: 'start_date') String endDate,
    @Default('') String network,
    @Default('') @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
    @Default('') String status,
  })=_TvShows;

  factory TvShows.fromJson(Map<String, dynamic> json) =>
  _$TvShowsFromJson(json);
}