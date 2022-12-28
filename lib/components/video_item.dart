import 'package:all_new_hatam/model/video.dart';
import 'package:flutter/material.dart';

class VideoItem extends StatelessWidget {
  final Video video;

  const VideoItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "http://img.youtube.com/vi/${video.code}/0.jpg",
                  width: 300,
                  height: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Image.asset(
                "images/ic_play.png",
                width: 45,
                height: 45,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(video.title),
          Text(
            video.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
