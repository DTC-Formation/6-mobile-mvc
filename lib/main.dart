import 'package:flutter/material.dart';
import 'package:rss_client/controller/home_controller.dart';

import 'model/article.dart';
import 'model/feed_parser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyHomePage(title: 'United Nation NEWS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> articles = [];

  @override
  Widget build(BuildContext context) {
    return const HomeController();
  }

  getFeed() {
    FeedParser().getFeed().then((value) {
      setState(() {
        articles = value;
      });
    });
  }
}
