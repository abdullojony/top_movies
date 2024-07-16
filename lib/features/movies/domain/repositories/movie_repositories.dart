import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';

abstract class MovieRepositories {
  Future<List<MovieEntity>> getPopularMovies(
      {required String token,
      required String language,
      required int page,
      required String region});
}
