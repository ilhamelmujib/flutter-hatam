import 'package:all_new_hatam/model/video.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoItem extends StatelessWidget {
  final Video video;

  const VideoItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _openYoutube(video.code);
      },
      child: Container(
        width: 320,
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
            Text(
              video.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              video.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  _openYoutube(String code) async {
    var uri = Uri.parse("https://www.youtube.com/watch?v=$code");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch youtube';
    }
  }

}

