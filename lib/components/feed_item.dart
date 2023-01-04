import 'package:all_new_hatam/screen/feed_screen.dart';
import 'package:flutter/material.dart';

import '../model/feed.dart';

class FeedItem extends StatefulWidget {
  final Feed feed;

  const FeedItem({super.key, required this.feed});

  @override
  State<StatefulWidget> createState() => _FeedItem();
}

class _FeedItem extends State<FeedItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FeedScreen(feed: widget.feed);
          }));
        },
        child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      widget.feed.user.photo,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.feed.user.name,
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(widget.feed.createdAt),
                    ],
                  )
                ],
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                  minHeight: 300, minWidth: double.infinity),
              child: Image.network(
                widget.feed.photo,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Text(
                widget.feed.caption,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
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
      ),
    );
  }
}
