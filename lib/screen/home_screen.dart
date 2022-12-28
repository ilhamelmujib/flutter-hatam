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
            children: const [
              PrayTime(),
              HomeMenu(),
              SahamQu(),
              ListVideo(),
              ListFeed()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
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
                Text("Shubuh -(07:00:00)"),
                SizedBox(height: 5),
                Text("04:36"),
                SizedBox(height: 5),
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
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MenuButton(icon: "images/ic_hafalan.png", title: "Hafalan", size: 70),
          MenuButton(icon: "images/ic_setoran.png", title: "Setoran", size: 70),
          MenuButton(
              icon: "images/ic_kelas_ngaji.png",
              title: "Kelas Ngaji",
              size: 70),
          MenuButton(
              icon: "images/ic_monitoring.png", title: "Monitoring", size: 70),
          MenuButton(icon: "images/ic_tilawah.png", title: "Tilawah", size: 70),
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
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("SahamQu"),
                Text(
                    "Yuk! Gabung investasi akhirat\nuntuk mendapatkan pasif pahala."),
              ],
            ),
          ),
          Image.asset(
            "images/ic_sahamqu.png",
            height: 110,
            width: 100,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

class ListVideo extends StatefulWidget {
  const ListVideo({super.key});

  @override
  State<StatefulWidget> createState() => _ListVideo();
}

class _ListVideo extends State<ListVideo> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        controller: _scrollController,
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