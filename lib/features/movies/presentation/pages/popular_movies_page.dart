import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:top_movies/features/movies/presentation/widgets/ext_library_option.dart';

class PopularMoviesPage extends ConsumerWidget {
  const PopularMoviesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
        centerTitle: false,
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: SvgPicture.asset(
                height: 20,
                fit: BoxFit.fitHeight,
                colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(144, 206, 161, 1), BlendMode.srcIn),
                'assets/tmdb_logo.svg',
                semanticsLabel: "The movie database",
              ),
            ),
          )
        ],
      ),
      body: const ExtLibraryOption(),
    );
  }
}
