import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:top_movies/features/movies/data/models/movie_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  MovieModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
