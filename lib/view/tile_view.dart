import 'package:flutter/material.dart';
import 'package:rss_client/view/title_row.dart';

import '../model/article.dart';
import '../model/date_formatter.dart';
import 'date_row.dart';
import 'description_text.dart';
import 'image_view.dart';

class TileView extends StatelessWidget {
  const TileView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => print('Tap sur: ${article.title}')),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            DateRow(date: (DateFormatter().readableDate(article.date))),
            ImageView(imgUrl: article.imageUrl),
            TitleRow(title: article.title),
            DescriptionText(description: article.description),
          ],
        ),
      ),
    );
  }
}
