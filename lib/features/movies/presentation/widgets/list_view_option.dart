import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:top_movies/config/constants/constants.dart';
import 'package:top_movies/features/movies/presentation/riverpod/popular_movies_provider.dart';

class ListViewOption extends ConsumerWidget {
  const ListViewOption({super.key});
  static const _pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final page = index ~/ _pageSize + 1;
        final indexInPage = index % _pageSize;

        final response = ref.watch(popularMoviesProvider(page: page));
        return response.when(
          error: (err, stack) => Text(err.toString()),
          loading: () => Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: ListTile(
              leading: Container(
                height: 100,
                width: 40,
                color: Colors.black,
              ),
              title: Container(
                width: double.infinity,
                height: 10,
                color: Colors.black,
              ),
              subtitle: Container(
                width: double.infinity,
                height: 10,
                color: Colors.black,
              ),
            ),
          ),
          data: (movies) {
            // This condition only happens if a null itemCount is given
            if (indexInPage >= movies.length) {
              return null;
            }
            final movie = movies[indexInPage];
            return ListTile(
              leading: Image.network(
                  height: 100, "$imageBaseUrl${movie.poster_path}"),
              title: Text("${movie.title}"),
              subtitle: Text(
                "${movie.overview}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            );
          },
        );
      },
    );
  }
}
