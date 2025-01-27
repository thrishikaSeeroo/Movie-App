import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_details/blocs/add_rating_bloc/add_rating_bloc.dart';

void showRatingDialog({required BuildContext context,
  required String movieTitle,
  required int movieId,
  required double ratingValue}) {
  double _rating = ratingValue; // Default rating

  showDialog(
    context: context,
    builder: (context) {
      var theme = Theme.of(context);
      return BlocListener<AddRatingBloc, AddRatingState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (_) {
              Get.back(); // Close the dialog on success
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Rating submitted successfully!")),
              );
            },
            failed: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Failed to submit rating: $error")),
              );
            },
            orElse: () {},
          );
        },
        child: AlertDialog(
          title: Text("Rate $movieTitle"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "How would you rate this movie?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              RatingBar.builder(
                initialRating: _rating / 2,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) =>
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (rating) {
                  _rating = rating;
                },
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green; // Color when pressed
                  }
                  return theme.primaryColor; // Default color
                }),
                foregroundColor:
                MaterialStateProperty.all(Colors.white), // Text color
              ),
              onPressed: () {
                context.read<AddRatingBloc>().add(
                    AddRatingEvent.fetch(movieId: movieId, value: _rating));
              },
              child:
              Text("Submit"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Cancel"),
            ),
          ],
        ),
      );
    },
  );
}
