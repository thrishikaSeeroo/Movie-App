

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_movie_app/core/utils/date_time_formatter.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/movie_details_screen.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

class HorizontalListWidget extends StatefulWidget {
  const HorizontalListWidget({
    super.key,
    required this.title,
    required this.moviesList,
  });
  final String title;
  final List<Result> moviesList;

  @override
  State<HorizontalListWidget> createState() => _HorizontalListWidgetState();
}

class _HorizontalListWidgetState extends State<HorizontalListWidget> {


  final ScrollController _scrollController = ScrollController();
  List<String> _items = []; // List of items
  bool _isLoading = false; // Loading state
  int _currentPage = 1; // Current page number
  final int _pageSize = 10; // Items per page


  @override
  void initState() {
    super.initState();

    // Initial data load
    // _fetchData();

    // Add scroll listener
    // _scrollController.addListener(() {
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent &&
    //       !_isLoading) {
    //     _fetchData();
    //   }
    // });
  }


  // Future<void> _fetchData() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   // Simulate a network request
  //   await Future.delayed(const Duration(seconds: 2));
  //   List<String> newItems = List.generate(
  //     _pageSize,
  //         (index) => "Item ${(index + 1) + (_currentPage - 1) * _pageSize}",
  //   );
  //
  //   setState(() {
  //     _items.addAll(newItems);
  //     _currentPage++;
  //     _isLoading = false;
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _scrollController.dispose(); // Dispose controller to prevent memory leaks
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 310,
          child: ListView.builder(
              controller: _scrollController,
            scrollDirection: Axis.horizontal,
              // itemCount: widget.moviesList.length + 1,
              itemCount: widget.moviesList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // if (index == _items.length) {
                //   return _isLoading
                //       ?  Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: Expanded(
                //       child: SizedBox(
                //         height: 40,
                //           width: 40,
                //           child: LinearProgressIndicator(
                //             backgroundColor: theme.cardColor,
                //             valueColor: AlwaysStoppedAnimation<Color>(theme.disabledColor),
                //           )),
                //     ),
                //   )
                //       : const SizedBox.shrink();
                // }
                return SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0, bottom: 8.0, left: 3.0, right: 3.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(MovieDetailsScreen(movieId: widget.moviesList[index].id!,));
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
                                  imageUrl: 'https://media.themoviedb.org/t/p/w500${widget.moviesList[index].posterPath}',
                                  placeholder: (context, url) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/icons/movie_placeholder.jpg",
                                      height: 60,
                                      width: 60,),
                                  ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: Colors.red,
                                  ),
                                  height: 180, // Specify the height
                                  width: 150,  // Specify the width
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${widget.moviesList[index].title}",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "${formatDate(widget.moviesList[index].releaseDate.toString())}",
                                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
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
                );}),
        ),
      ],
    );
  }
}


