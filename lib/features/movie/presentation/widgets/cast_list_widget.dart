

import 'package:flutter/material.dart';
import 'package:the_movie_app/features/movie/domain/entities/movie_list_response.dart';

class CastListWidget extends StatelessWidget {
  const CastListWidget({
    super.key,
    required this.title,
    required this.moviesList,
  });
  final String title;
  final List<MovieListResponse> moviesList;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 110, // Diameter + border width
                          height: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all( // Border color
                              width: 3, // Border width
                            ),
                          ),
                          child: ClipOval(
                            child: Icon(Icons.person, size: 50,),
                            // Image.network(
                            //   'https://via.placeholder.com/150', // Replace with your image URL
                            //   width: 100,
                            //   height: 100,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "role",
                                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );}),
        ),
      ],
    );
  }
}


