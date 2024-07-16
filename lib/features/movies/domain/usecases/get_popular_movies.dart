import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';
import 'package:top_movies/features/movies/domain/repositories/movie_repositories.dart';

class GetPopularMovies {
  final MovieRepositories _repositories;
  GetPopularMovies(this._repositories);

  Future<List<MovieEntity>> call(
      {required String token,
      String language = "en-US",
      required int page,
      String region = 'tj'}) {
    return _repositories.getPopularMovies(
        token: token, language: language, page: page, region: region);
  }
}
