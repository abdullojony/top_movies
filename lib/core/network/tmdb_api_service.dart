import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:top_movies/config/constants/constants.dart';

part 'tmdb_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TmdbApiService {
  factory TmdbApiService(Dio dio) = _TmdbApiService;

  @GET('/popular')
  @Headers(<String, dynamic>{'accept': 'application/json'})
  Future<HttpResponse> getPopularMovies({
    @Header('Authorization') required String token,
    @Query('language') String? language,
    @Query('page') required int page,
    @Query('region') String? region,
  });
}
