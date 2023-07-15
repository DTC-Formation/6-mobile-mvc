import 'package:flutter/material.dart';
import 'package:rss_client/model/feed_parser.dart';
import 'package:rss_client/view/liste_view.dart';

class FeedController extends StatelessWidget {
  const FeedController({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FeedParser().getFeed(),
      builder: (context, snapshot) {
        return ListeView(articles: snapshot.data ?? []);
      },
    );
  }
}
