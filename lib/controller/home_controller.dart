import 'package:flutter/material.dart';

import 'feed_controller.dart';

class HomeController extends StatelessWidget {
  const HomeController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RSS')),
      body: const FeedController(),
    );
  }
}
