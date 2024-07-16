library movie_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:top_movies/core/serializers/serializers.dart';
import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';

part 'movie_model.g.dart';

abstract class MovieModel
    implements MovieEntity, Built<MovieModel, MovieModelBuilder> {
  // fields go here
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get overview;
  @override
  double? get popularity;
  @override
  String? get poster_path;
  @override
  String? get release_date;

  MovieModel._();

  factory MovieModel([Function(MovieModelBuilder b) updates]) = _$MovieModel;

  String toJson() {
    return json.encode(serializers.serializeWith(MovieModel.serializer, this));
  }

  static MovieModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieModel.serializer, json)!;
  }

  static Serializer<MovieModel> get serializer => _$movieModelSerializer;
}
