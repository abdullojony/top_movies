import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:top_movies/config/constants/constants.dart';
import 'package:top_movies/core/network/tmdb_api_service.dart';
import 'package:top_movies/features/movies/data/repositories/movie_repositories_impl.dart';
import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';
import 'package:top_movies/features/movies/domain/usecases/get_popular_movies.dart';

part 'popular_movies_provider.g.dart';

@riverpod
Future<List<MovieEntity>> popularMovies(PopularMoviesRef ref,
    {required int page}) async {
  return await GetPopularMovies(MovieRepositoriesImpl(TmdbApiService(Dio())))(
      token: "Bearer $accessToken", page: page);
}
