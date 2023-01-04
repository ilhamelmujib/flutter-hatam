import 'package:all_new_hatam/screen/feed_screen.dart';
import 'package:flutter/material.dart';

import '../model/feed.dart';

class FeedItemGrid extends StatelessWidget {
  final Feed feed;

  const FeedItemGrid({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            feed.photo,
            fit: BoxFit.fitWidth,
            height: 100,
          ),
    );
  }
}
