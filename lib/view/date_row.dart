import 'package:flutter/material.dart';

class DateRow extends StatelessWidget {
  const DateRow({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          date.toString(),
          style: const TextStyle(
              color: Colors.red, fontStyle: FontStyle.italic, fontSize: 11),
        )
      ],
    );
  }
}
