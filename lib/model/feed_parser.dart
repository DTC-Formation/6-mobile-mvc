import 'package:http/http.dart' as http;
import 'package:rss_client/model/article.dart';
import 'package:webfeed/webfeed.dart';

class FeedParser {
  Future<List<Article>> getFeed() async {
    List<Article> articles = [];
    String urlString = "https://news.un.org/feed/subscribe/en/news/all/rss.xml";
    final client = http.Client();
    final url = Uri.parse(urlString);
    final clientResponse = await client.get(url);
    final rssFeed = RssFeed.parse(clientResponse.body);
    final items = rssFeed.items;
    if (items != null) {
      for (var item in items) {
        articles.add(Article(item: item));
      }
    }
    return articles;
  }
}
