import 'package:all_new_hatam/components/feed_item.dart';
import 'package:all_new_hatam/components/video_item.dart';
import 'package:all_new_hatam/model/feed.dart';
import 'package:all_new_hatam/model/video.dart';
import 'package:flutter/material.dart';
import '../components/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PrayTime(),
              const HomeMenu(),
              const SahamQu(),
              ListVideo(),
              const ListFeed()
            ],
          ),
        ),
      ),
    );
  }
}

class PrayTime extends StatelessWidget {
  const PrayTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Shubuh -(07:00:00)",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 5),
                Text(
                  "04:36",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 6),
                Text("Lihat jadwal shalat >"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MenuButton(
                    icon: "images/ic_mosque.png", title: "Masjid", size: 36),
                SizedBox(width: 15),
                MenuButton(
                    icon: "images/ic_qibla.png", title: "Kiblat", size: 36),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Expanded(
            child: MenuButton(
                icon: "images/ic_hafalan.png", title: "Hafalan", size: 50),
          ),
          Expanded(
            child: MenuButton(
                icon: "images/ic_setoran.png", title: "Setoran", size: 50),
          ),
          Expanded(
            child: MenuButton(
                icon: "images/ic_kelas_ngaji.png",
                title: "Kelas",
                size: 50),
          ),
          Expanded(
            child: MenuButton(
                icon: "images/ic_monitoring.png",
                title: "Monitoring",
                size: 50),
          ),
          Expanded(
            child: MenuButton(
                icon: "images/ic_tilawah.png", title: "Tilawah", size: 50),
          ),
        ],
      ),
    );
  }
}

class SahamQu extends StatelessWidget {
  const SahamQu({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "SahamQu",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "Yuk! Gabung investasi akhirat untuk mendapatkan pasif pahala."),
                ],
              ),
            ),
          ),
          Image.asset(
            "images/ic_sahamqu.png",
            height: 100,
            width: 100,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

class ListVideo extends StatelessWidget {
  final scrollController = ScrollController();

  ListVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        children: videos.map((video) {
          return VideoItem(video: video);
        }).toList(),
      ),
    );
  }
}

class ListFeed extends StatelessWidget {
  const ListFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: feeds.map((feed) {
        return FeedItem(feed: feed);
      }).toList(),
    );
  }
}
