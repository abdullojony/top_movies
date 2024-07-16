import 'package:top_movies/core/network/tmdb_api_service.dart';
import 'package:top_movies/features/movies/data/models/movie_model.dart';
import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';
import 'package:top_movies/features/movies/domain/repositories/movie_repositories.dart';

class MovieRepositoriesImpl implements MovieRepositories {
  final TmdbApiService _apiService;
  MovieRepositoriesImpl(this._apiService);

  @override
  Future<List<MovieEntity>> getPopularMovies(
      {required String token,
      required String language,
      required int page,
      required String region}) async {
    final httpResponse = await _apiService.getPopularMovies(
        token: token, page: page, language: language, region: region);
    final movies = httpResponse.data['results'] as List;
    return movies.map((e) => MovieModel.fromJson(e)).toList();
  }
}
