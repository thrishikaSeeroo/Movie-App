import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:the_movie_app/core/utils/common_error_loading_widget.dart';
import 'package:the_movie_app/core/utils/date_time_formatter.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/blocs/add_fav_bloc/add_fav_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/blocs/add_watchlist_bloc/add_watchlist_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/blocs/credit_details_bloc/credit_details_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/blocs/movie_details_bloc/get_movie_details_bloc.dart';
import 'package:the_movie_app/features/movie/presentation/widgets/cast_list_widget.dart';
import 'package:the_movie_app/features/movie/presentation/widgets/rating_widget.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({
    super.key,
    required this.movieId,
  });
  final int movieId;

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  bool _isExpanded = false;
  bool _isInWatchlist = false;
  bool _isFavorited = false;

  // Function to toggle the watchlist state
  void _toggleWatchlist({required int mediaId, required String mediaType}) {
    setState(() {
      _isInWatchlist = !_isInWatchlist;
    });
    if (_isInWatchlist) {
      // Add movie to watchlist
      context.read<AddWatchlistBloc>().add(AddWatchlistEvent.fetch(
          accountId: 21773962,
          mediaId: mediaId,
          mediaType: mediaType,
          watchlist: true));
      print("Movie added to watchlist");
    } else {
      // Remove movie from watchlist
      context.read<AddWatchlistBloc>().add(AddWatchlistEvent.fetch(
          accountId: 21773962,
          mediaId: mediaId,
          mediaType: mediaType,
          watchlist: false));
      print("Movie  removed from watchlist");
    }
  }

  // Function to toggle the favorite state
  void _toggleFavorite({required int mediaId, required String mediaType}) {
    setState(() {
      _isFavorited = !_isFavorited;
    });

    if (_isFavorited) {
      // Add to favorites
      context.read<AddFavBloc>().add(AddFavEvent.fetch(
          accountId: 21773962,
          mediaId: mediaId,
          mediaType: mediaType,
          favorite: true));
      print("Item  added to favorites");
    } else {
      // Remove from favorites
      context.read<AddFavBloc>().add(AddFavEvent.fetch(
          accountId: 21773962,
          mediaId: mediaId,
          mediaType: mediaType,
          favorite: false));
      print("Item removed from favorites");
    }
  }

  @override
  void initState() {
    context
        .read<GetMovieDetailsBloc>()
        .add(GetMovieDetailsEvent.fetch(movieId: widget.movieId));
    context
        .read<CreditDetailsBloc>()
        .add(CreditDetailsEvent.fetch(movieId: widget.movieId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, box) {
      return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          body: BlocBuilder<GetMovieDetailsBloc, GetMovieDetailsState>(
            builder: (context, state) {
              return state.when(
                  initial: () => CommonErrorLoadingWidget(
                      height: box.maxHeight, error: "Failed to Call API"),
                  loading: () => CommonErrorLoadingWidget(
                        height: box.maxHeight,
                        isLoading: true,
                        error: null,
                      ),
                  failed: (error) => CommonErrorLoadingWidget(
                        error: error,
                        height: box.maxHeight,
                      ),
                  success: (data) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://media.themoviedb.org/t/p/w500${data.posterPath}',
                                    placeholder: (context, url) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/icons/movie_placeholder.jpg",
                                        height: 200,
                                        width: size.width,
                                      ),
                                    ),
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.error,
                                      color: Colors.red,
                                    ),
                                    height: 200, // Specify the height
                                    width: double
                                        .infinity, // Fills the width of the parent
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "${data.title}",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "${data.genres!.map((genre) => genre.name).join(', ')}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${formatDate(data.releaseDate.toString())}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "(${data.originCountry!.join(', ')})  ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 7,
                                    color: theme.disabledColor,
                                  ),
                                  Text(
                                    "  ${formatDuration(data.runtime!)}",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            '⭐  ${data.voteAverage?.toStringAsFixed(1)}/10', // First part of the text
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text:
                                                '  (${data.voteCount} Votes) ',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        showRatingDialog(
                                            context: context,
                                            movieId: data.id!,
                                            movieTitle: data.title!,
                                            ratingValue: data.voteAverage!);
                                      },
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 7.0, right: 7.0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9.0),
                                              border: Border.all(
                                                  color: Colors.redAccent)),
                                          child: Text("Rate Now",
                                              style: TextStyle(
                                                  color: Colors.redAccent))))
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Tooltip(
                                    message: "Add to your watchlist",
                                    child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: theme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: IconButton(
                                        onPressed: () {
                                          _toggleWatchlist(
                                              mediaId: data.id!,
                                              mediaType: "movie");
                                        },
                                        icon: Icon(
                                          _isInWatchlist
                                              ? Icons.bookmark
                                              : Icons.bookmark,
                                          size: 22, // Icon changes
                                          color: _isInWatchlist
                                              ? Colors.red
                                              : Colors.white, // Color changes
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Tooltip(
                                    message: 'Mark as favorite',
                                    child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                          color: theme.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: IconButton(
                                        onPressed: () {
                                          _toggleFavorite(
                                              mediaId: data.id!,
                                              mediaType: "movie");
                                        },
                                        icon: Icon(
                                          size: 22,
                                          _isFavorited
                                              ? Icons.favorite
                                              : Icons.favorite, // Icon changes
                                          color: _isFavorited
                                              ? Colors.pinkAccent
                                              : Colors.white, // Color changes
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Text(
                                "${data.tagline}",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Overview",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                  _isExpanded
                                      ? data.overview!
                                      : "${data.overview?.substring(0, 100)}...",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal)),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isExpanded =
                                          !_isExpanded; // Toggle the expanded state
                                    });
                                  },
                                  child: Text(
                                    _isExpanded ? "show less" : "show more",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BlocBuilder<CreditDetailsBloc,
                                  CreditDetailsState>(
                                builder: (context, state) {
                                  return state.when(
                                      initial: () => CommonErrorLoadingWidget(
                                          height: box.maxHeight,
                                          error: "Failed to Call API"),
                                      loading: () => CommonErrorLoadingWidget(
                                            height: box.maxHeight,
                                            isLoading: true,
                                            error: null,
                                          ),
                                      failed: (error) =>
                                          CommonErrorLoadingWidget(
                                            error: error,
                                            height: box.maxHeight,
                                          ),
                                      success: (data) {
                                        final List<Cast> castList =
                                            data.cast ?? [];
                                        final List<Cast> crewList =
                                            data.crew ?? [];
                                        return Column(
                                          children: [
                                            CastListWidget(
                                                title: "Top Billed Cast",
                                                castList: castList),
                                            data.crew!.isEmpty
                                                ? SizedBox.shrink()
                                                : CastListWidget(
                                                    title: "Crew",
                                                    castList: crewList),
                                          ],
                                        );
                                      });
                                },
                              ),
                            ]),
                      ),
                    );
                  });
            },
          ));
    });
  }
}
