import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:top_movies/config/constants/constants.dart';
import 'package:top_movies/features/movies/domain/entities/movie_entity.dart';
import 'package:top_movies/features/movies/presentation/riverpod/popular_movies_provider.dart';

class ExtLibraryOption extends ConsumerStatefulWidget {
  const ExtLibraryOption({super.key});

  @override
  ConsumerState<ExtLibraryOption> createState() => _ExtLibraryOptionState();
}

class _ExtLibraryOptionState extends ConsumerState<ExtLibraryOption> {
  static const _pageSize = 20;
  int totalLoaded = 0;

  final PagingController<int, MovieEntity> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    final newItems =
        await ref.read(popularMoviesProvider(page: pageKey).future);
    totalLoaded += newItems.length;
    print("Total loaded: $totalLoaded");
    final isLastPage = newItems.length < _pageSize;
    if (isLastPage) {
      _pagingController.appendLastPage(newItems);
    } else {
      final nextPageKey = pageKey + 1;
      _pagingController.appendPage(newItems, nextPageKey);
    }
  }

  @override
  Widget build(BuildContext context) =>
      // Don't worry about displaying progress or error indicators on screen; the
      // package takes care of that. If you want to customize them, use the
      // [PagedChildBuilderDelegate] properties.
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: PagedGridView<int, MovieEntity>(
          showNewPageProgressIndicatorAsGridChild: false,
          showNewPageErrorIndicatorAsGridChild: false,
          showNoMoreItemsIndicatorAsGridChild: false,
          pagingController: _pagingController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 100 / 135,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          builderDelegate: PagedChildBuilderDelegate<MovieEntity>(
              itemBuilder: (context, movie, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Image.network(
                      height: 100,
                      fit: BoxFit.fitHeight,
                      "$imageBaseUrl${movie.poster_path}"),
                  const SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${movie.title}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${movie.overview}",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
