// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListModel _$MovieListModelFromJson(Map<String, dynamic> json) {
  return _MovieListModel.fromJson(json);
}

/// @nodoc
mixin _$MovieListModel {
  String get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow => throw _privateConstructorUsedError;

  /// Serializes this MovieListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListModelCopyWith<MovieListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListModelCopyWith<$Res> {
  factory $MovieListModelCopyWith(
          MovieListModel value, $Res Function(MovieListModel) then) =
      _$MovieListModelCopyWithImpl<$Res, MovieListModel>;
  @useResult
  $Res call(
      {String total,
      int page,
      int totalPage,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShow});
}

/// @nodoc
class _$MovieListModelCopyWithImpl<$Res, $Val extends MovieListModel>
    implements $MovieListModelCopyWith<$Res> {
  _$MovieListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? totalPage = null,
    Object? tvShow = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListModelImplCopyWith<$Res>
    implements $MovieListModelCopyWith<$Res> {
  factory _$$MovieListModelImplCopyWith(_$MovieListModelImpl value,
          $Res Function(_$MovieListModelImpl) then) =
      __$$MovieListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      int page,
      int totalPage,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShow});
}

/// @nodoc
class __$$MovieListModelImplCopyWithImpl<$Res>
    extends _$MovieListModelCopyWithImpl<$Res, _$MovieListModelImpl>
    implements _$$MovieListModelImplCopyWith<$Res> {
  __$$MovieListModelImplCopyWithImpl(
      _$MovieListModelImpl _value, $Res Function(_$MovieListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? totalPage = null,
    Object? tvShow = null,
  }) {
    return _then(_$MovieListModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value._tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListModelImpl implements _MovieListModel {
  _$MovieListModelImpl(
      {this.total = '',
      this.page = 0,
      this.totalPage = 0,
      @JsonKey(name: 'tv_shows') final List<TvShows> tvShow = const []})
      : _tvShow = tvShow;

  factory _$MovieListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListModelImplFromJson(json);

  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int totalPage;
  final List<TvShows> _tvShow;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow {
    if (_tvShow is EqualUnmodifiableListView) return _tvShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShow);
  }

  @override
  String toString() {
    return 'MovieListModel(total: $total, page: $page, totalPage: $totalPage, tvShow: $tvShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            const DeepCollectionEquality().equals(other._tvShow, _tvShow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, totalPage,
      const DeepCollectionEquality().hash(_tvShow));

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      __$$MovieListModelImplCopyWithImpl<_$MovieListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListModelImplToJson(
      this,
    );
  }
}

abstract class _MovieListModel implements MovieListModel {
  factory _MovieListModel(
          {final String total,
          final int page,
          final int totalPage,
          @JsonKey(name: 'tv_shows') final List<TvShows> tvShow}) =
      _$MovieListModelImpl;

  factory _MovieListModel.fromJson(Map<String, dynamic> json) =
      _$MovieListModelImpl.fromJson;

  @override
  String get total;
  @override
  int get page;
  @override
  int get totalPage;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShow;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return _TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  String get name => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get endDate => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call(
      {String name,
      String permalink,
      @JsonKey(name: 'start_date') String endDate,
      String network,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
      String status});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvShowsImplCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$$TvShowsImplCopyWith(
          _$TvShowsImpl value, $Res Function(_$TvShowsImpl) then) =
      __$$TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String permalink,
      @JsonKey(name: 'start_date') String endDate,
      String network,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath,
      String status});
}

/// @nodoc
class __$$TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$TvShowsImpl>
    implements _$$TvShowsImplCopyWith<$Res> {
  __$$TvShowsImplCopyWithImpl(
      _$TvShowsImpl _value, $Res Function(_$TvShowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? endDate = null,
    Object? network = null,
    Object? imageThumbnailPath = null,
    Object? status = null,
  }) {
    return _then(_$TvShowsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvShowsImpl implements _TvShows {
  _$TvShowsImpl(
      {this.name = '',
      this.permalink = '',
      @JsonKey(name: 'start_date') this.endDate = '',
      this.network = '',
      @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = '',
      this.status = ''});

  factory _$TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvShowsImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String permalink;
  @override
  @JsonKey(name: 'start_date')
  final String endDate;
  @override
  @JsonKey()
  final String network;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  final String imageThumbnailPath;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'TvShows(name: $name, permalink: $permalink, endDate: $endDate, network: $network, imageThumbnailPath: $imageThumbnailPath, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvShowsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, permalink, endDate,
      network, imageThumbnailPath, status);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      __$$TvShowsImplCopyWithImpl<_$TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvShowsImplToJson(
      this,
    );
  }
}

abstract class _TvShows implements TvShows {
  factory _TvShows(
      {final String name,
      final String permalink,
      @JsonKey(name: 'start_date') final String endDate,
      final String network,
      @JsonKey(name: 'image_thumbnail_path') final String imageThumbnailPath,
      final String status}) = _$TvShowsImpl;

  factory _TvShows.fromJson(Map<String, dynamic> json) = _$TvShowsImpl.fromJson;

  @override
  String get name;
  @override
  String get permalink;
  @override
  @JsonKey(name: 'start_date')
  String get endDate;
  @override
  String get network;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath;
  @override
  String get status;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TvShowsImplCopyWith<_$TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
