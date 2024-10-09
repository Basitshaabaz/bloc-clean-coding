// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieListModelImpl _$$MovieListModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieListModelImpl(
      total: json['total'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
      totalPage: (json['totalPage'] as num?)?.toInt() ?? 0,
      tvShow: (json['tv_shows'] as List<dynamic>?)
              ?.map((e) => TvShows.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MovieListModelImplToJson(
        _$MovieListModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'totalPage': instance.totalPage,
      'tv_shows': instance.tvShow,
    };

_$TvShowsImpl _$$TvShowsImplFromJson(Map<String, dynamic> json) =>
    _$TvShowsImpl(
      name: json['name'] as String? ?? '',
      permalink: json['permalink'] as String? ?? '',
      endDate: json['start_date'] as String? ?? '',
      network: json['network'] as String? ?? '',
      imageThumbnailPath: json['image_thumbnail_path'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$TvShowsImplToJson(_$TvShowsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'permalink': instance.permalink,
      'start_date': instance.endDate,
      'network': instance.network,
      'image_thumbnail_path': instance.imageThumbnailPath,
      'status': instance.status,
    };
