import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app/features/movie/domain/entities/credits_list_response.dart';

class CastListWidget extends StatelessWidget {
  const CastListWidget({
    super.key,
    required this.title,
    required this.castList,
  });
  final String title;
  final List<Cast> castList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 210,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: castList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
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
                              border: Border.all(
                                  // Border color
                                  width: 1, //
                                  color: Colors.black12 // Border width
                                  ),
                            ),
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://media.themoviedb.org/t/p/w500${castList[index].profilePath}',
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
                                height: 180, // Specify the height
                                width: 150, // Specify the width
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${castList[index].name}",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  castList[index].character != null
                                      ? "${castList[index].character}"
                                      : "${castList[index].job}",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[600]),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
