import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_movie_app/core/utils/date_time_formatter.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/movie_details_screen.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/movie_list_bloc/get_movie_list_bloc.dart';

class HorizontalAllMovieListWidget extends StatefulWidget {
  const HorizontalAllMovieListWidget({
    super.key,
    required this.title,
    required this.moviesList,
  });
  final String title;
  final List<Result> moviesList;

  @override
  State<HorizontalAllMovieListWidget> createState() =>
      _HorizontalAllMovieListWidgetState();
}

class _HorizontalAllMovieListWidgetState
    extends State<HorizontalAllMovieListWidget> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  int _currentPage = 1;
  List<Result> _movies = [];

  @override
  void initState() {
    super.initState();
    _movies = widget.moviesList; // Initialize with the first set of movies
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !_isLoadingMore) {
      _fetchMoreMovies();
    }
  }

  void _fetchMoreMovies() {
    setState(() {
      _isLoadingMore = true;
    });
    print("_currentPage num ${_currentPage}");
    context
        .read<GetMovieListBloc>()
        .add(GetMovieListEvent.fetch(pageNo: _currentPage + 1));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetMovieListBloc, GetMovieListState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            final newMovies = data.results ?? [];
            setState(() {
              _movies.addAll(newMovies);
              _currentPage++;
              _isLoadingMore = false;
            });
          },
          failed: (_) {
            setState(() {
              _isLoadingMore = false;
            });
          },
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Text(widget.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 310,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: _movies.length +
                  (_isLoadingMore ? 1 : 0), // Add one for the loader
              itemBuilder: (context, index) {
                if (index == _movies.length) {
                  return _isLoadingMore
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircularProgressIndicator(),
                        )
                      : const SizedBox.shrink();
                }
                final movie = _movies[index];
                return SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(MovieDetailsScreen(movieId: movie.id!));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://media.themoviedb.org/t/p/w500${movie.posterPath}',
                                  placeholder: (context, url) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/icons/movie_placeholder.jpg",
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                                  height: 180,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie.title ?? '',
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      formatDate(movie.releaseDate.toString()),
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600]),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
