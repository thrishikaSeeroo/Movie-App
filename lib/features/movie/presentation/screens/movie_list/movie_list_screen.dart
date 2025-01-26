import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:the_movie_app/core/utils/common_error_loading_widget.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/favorite_movies_bloc/favorite_movies_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/movie_list_bloc/get_movie_list_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/blocs/watch_list_bloc/watchlist_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/widgets/carousel_slider_widget.dart';
import 'package:the_movie_app/features/movie/presentation/widgets/horizontal_list_widget.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({super.key});

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {

  @override
  void initState() {
    context.read<GetMovieListBloc>().add(const GetMovieListEvent.fetch());
    context.read<FavoriteMoviesBloc>().add(const FavoriteMoviesEvent.fetch(accountId: 21773962));
    context.read<WatchlistBloc>().add(const WatchlistEvent.fetch(accountId: 21773962));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return LayoutBuilder(
        builder: (context, box) {
        return Scaffold(
          // backgroundColor: Colors.black12,
            appBar: AppBar(
              // backgroundColor: Colors.black12,
              title: Text("Movie App", style: TextStyle(color: theme.primaryColor,
                  fontWeight: FontWeight.w900, fontSize: 30),),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CarouselSliderWidget(),
                      SizedBox(height: 20,),
                      BlocBuilder<FavoriteMoviesBloc, FavoriteMoviesState>(
                        builder: (context, state) {
                          return
                            state.when(
                                initial: () => CommonErrorLoadingWidget(
                                    height: box.maxHeight ,
                                    error: "Failed to Call API"),
                                loading: () => CommonErrorLoadingWidget(
                                  height: box.maxHeight ,
                                  isLoading: true,
                                  error: null,
                                ),
                                failed: (error) => CommonErrorLoadingWidget(
                                  error: error,
                                  height: box.maxHeight,
                                ),
                                success: (data) {
                                  final List<Result> favMovieList = data.results ?? [];
                                  return Container(
                                    color: Colors.white,
                                    width: double.infinity,
                                    child: HorizontalListWidget(
                                      title: 'Favorite Movies', moviesList: favMovieList,),
                                  );
                                });

                        },
                      ),
                      BlocBuilder<GetMovieListBloc, GetMovieListState>(
                        builder: (context, state) {
                          return
                            state.when(
                                initial: () => CommonErrorLoadingWidget(
                                    height: box.maxHeight ,
                                    error: "Failed to Call API"),
                                loading: () => CommonErrorLoadingWidget(
                                  height: box.maxHeight ,
                                  isLoading: true,
                                  error: null,
                                ),
                                failed: (error) => CommonErrorLoadingWidget(
                                  error: error,
                                  height: box.maxHeight,
                                ),
                                success: (data) {
                                  final List<Result> movieList = data.results ?? [];
                                  return HorizontalListWidget(
                                    title: 'Movies', moviesList: movieList,);
                                });

                        },
                      ),
                      BlocBuilder<WatchlistBloc, WatchlistState>(
                        builder: (context, state) {
                          return
                            state.when(
                                initial: () => CommonErrorLoadingWidget(
                                    height: box.maxHeight ,
                                    error: "Failed to Call API"),
                                loading: () => CommonErrorLoadingWidget(
                                  height: box.maxHeight ,
                                  isLoading: true,
                                  error: null,
                                ),
                                failed: (error) => CommonErrorLoadingWidget(
                                  error: error,
                                  height: box.maxHeight,
                                ),
                                success: (data) {
                                  final List<Result> watchList = data.results ?? [];
                                  return Container(
                                    color: Colors.white,
                                    width: double.infinity,
                                    child: HorizontalListWidget(
                                      title: 'Watch List Movies', moviesList: watchList,),
                                  );
                                });

                        },
                      ),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: Text("Movies", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      // ),
                      // GridViewWidget(),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: Text('Watch List Movies', style: TextStyle(
                      //       fontSize: 18, fontWeight: FontWeight.bold)),
                      // ),
                      // WatchListWidget()
                    ]
                ),
              ),
            )
        );
      }
    );
  }
}
