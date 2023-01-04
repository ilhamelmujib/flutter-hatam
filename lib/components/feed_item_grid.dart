import 'package:all_new_hatam/screen/feed_screen.dart';
import 'package:flutter/material.dart';

import '../model/feed.dart';

class FeedItemGrid extends StatefulWidget {
  final Feed feed;

  const FeedItemGrid({super.key, required this.feed});

  @override
  State<StatefulWidget> createState() => _FeedItemGrid();
}

class _FeedItemGrid extends State<FeedItemGrid> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            widget.feed.photo,
            fit: BoxFit.fitWidth,
            height: 100,
          ),
    );
  }
}
