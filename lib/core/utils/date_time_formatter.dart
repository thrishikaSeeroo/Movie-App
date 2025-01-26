
import 'package:intl/intl.dart';

String formatDate(String dateString) {
  // Parse the input date string to a DateTime object
  DateTime dateTime = DateTime.parse(dateString);

  // Define the desired format
  DateFormat formatter = DateFormat('MMM d, yyyy');

  // Format the DateTime object
  return formatter.format(dateTime);
}

String formatDuration(int minutes) {
  int hours = minutes ~/ 60; // Integer division to get the hours
  int remainingMinutes = minutes % 60; // Remainder to get the minutes
  return '${hours}h ${remainingMinutes}m';
}