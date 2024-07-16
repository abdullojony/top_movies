// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieModel> _$movieModelSerializer = new _$MovieModelSerializer();

class _$MovieModelSerializer implements StructuredSerializer<MovieModel> {
  @override
  final Iterable<Type> types = const [MovieModel, _$MovieModel];
  @override
  final String wireName = 'MovieModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.poster_path;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.release_date;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieModel extends MovieModel {
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? overview;
  @override
  final double? popularity;
  @override
  final String? poster_path;
  @override
  final String? release_date;

  factory _$MovieModel([void Function(MovieModelBuilder)? updates]) =>
      (new MovieModelBuilder()..update(updates))._build();

  _$MovieModel._(
      {this.id,
      this.title,
      this.overview,
      this.popularity,
      this.poster_path,
      this.release_date})
      : super._();

  @override
  MovieModel rebuild(void Function(MovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieModelBuilder toBuilder() => new MovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieModel &&
        id == other.id &&
        title == other.title &&
        overview == other.overview &&
        popularity == other.popularity &&
        poster_path == other.poster_path &&
        release_date == other.release_date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, poster_path.hashCode);
    _$hash = $jc(_$hash, release_date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieModel')
          ..add('id', id)
          ..add('title', title)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('poster_path', poster_path)
          ..add('release_date', release_date))
        .toString();
  }
}

class MovieModelBuilder implements Builder<MovieModel, MovieModelBuilder> {
  _$MovieModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  MovieModelBuilder();

  MovieModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _poster_path = $v.poster_path;
      _release_date = $v.release_date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieModel;
  }

  @override
  void update(void Function(MovieModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieModel build() => _build();

  _$MovieModel _build() {
    final _$result = _$v ??
        new _$MovieModel._(
            id: id,
            title: title,
            overview: overview,
            popularity: popularity,
            poster_path: poster_path,
            release_date: release_date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
