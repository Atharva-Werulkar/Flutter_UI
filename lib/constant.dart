import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDayAndMonth(DateTime date) {
  final formatter =
      DateFormat('dd MMMM'); // 'dd' for day, 'MMMM' for full month name
  return formatter.format(date);
}

String formatDay(DateTime date) {
  final now = DateTime.now();

  if (date.year == now.year && date.month == now.month && date.day == now.day) {
    return 'Today';
  } else if (date.year == now.year &&
      date.month == now.month &&
      date.day == now.day + 1) {
    return 'Tomorrow';
  } else {
    return '${date.day.toString().padLeft(2, '0')} ${_getMonthAbbreviation(date.month)}';
  }
}

String _getMonthAbbreviation(int month) {
  switch (month) {
    case 1:
      return 'Jan';
    case 2:
      return 'Feb';
    case 3:
      return 'Mar';
    case 4:
      return 'Apr';
    case 5:
      return 'May';
    case 6:
      return 'Jun';
    case 7:
      return 'Jul';
    case 8:
      return 'Aug';
    case 9:
      return 'Sep';
    case 10:
      return 'Oct';
    case 11:
      return 'Nov';
    case 12:
      return 'Dec';
    default:
      return '';
  }
}

SizedBox sizedBox20 = const SizedBox(height: 20);

Widget buildcard(String date) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sizedBox20,
      sizedBox20,
      Text(
        date,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
      sizedBox20,
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            '08:00',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 3,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Design',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                'Task Mac OS app',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
