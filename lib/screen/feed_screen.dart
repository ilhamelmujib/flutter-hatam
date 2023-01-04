import 'package:all_new_hatam/components/feed_item_grid.dart';
import 'package:flutter/material.dart';

import '../model/feed.dart';

class FeedScreen extends StatelessWidget {
  final Feed feed;

  const FeedScreen({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Postingan"),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FeedDetail(feed: feed),
              GridView.count(
                padding: const EdgeInsets.all(6),
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children:
                    feeds.where((element) => element.id != feed.id).map((feed) {
                  return FeedItemGrid(feed: feed);
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FeedDetail extends StatefulWidget {
  final Feed feed;

  const FeedDetail({super.key, required this.feed});

  @override
  State<StatefulWidget> createState() => _FeedDetail();
}

class _FeedDetail extends State<FeedDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints:
                const BoxConstraints(minHeight: 300, minWidth: double.infinity),
            child: Image.network(
              widget.feed.photo,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.feed.user.name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.feed.caption,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.share),
                  ],
                ),
                Text(widget.feed.totalLikes)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
