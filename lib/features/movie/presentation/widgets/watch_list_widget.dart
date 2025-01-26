import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200, // Adjust height to fit the design
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Movie Poster with Play Button Overlay
                        Stack(
                          children: [
                            Expanded(
                              child: CachedNetworkImage(
                                imageUrl: '',
                                placeholder: (context, url) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset(
                                        "assets/icons/movie_placeholder.jpg",
                                        height: 20,
                                        width: 20,)
                                  ),
                                ),
                                errorWidget: (context, url, error) => Icon(
                                  Icons.error,
                                  color: Colors.red,
                                ),
                                height: 80, // Specify the height
                                width: 80,  // Specify the width
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.play_circle_fill,
                                    size: 40,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    // Play action
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        // Progress Bar
                        Container(
                          width: 100,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: 0.7,
                            // Progress percentage (0.0 to 1.0)
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text("Title")
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Image.asset("assets/icons/info.png", height: 20, width: 20,),
                        //     IconButton(
                        //       onPressed: () {
                        //         // Action for removing
                        //       },
                        //       icon: const Icon(Icons.menu, color: Colors.grey),
                        //     ),
                        //   ],
                        // )
                      ]));
            }));
  }
}
