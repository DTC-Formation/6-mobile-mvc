import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        softWrap: true,
        style: const TextStyle(
            color: Colors.blueAccent,
            fontStyle: FontStyle.italic,
            fontSize: 16),
      ),
    );
  }
}
