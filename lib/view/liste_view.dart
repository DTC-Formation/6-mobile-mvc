import 'package:flutter/material.dart';
import 'package:rss_client/model/article.dart';

import 'tile_view.dart';

class ListeView extends StatelessWidget {
  const ListeView({super.key, required this.articles});
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final article = articles[index];
        return TileView(article: article);
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: articles.length,
    );
  }
}
