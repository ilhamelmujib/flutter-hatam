class Feed {
  int id;

  String caption;
  String photo;
  String totalLikes;
  String createdAt;
  User user;

  Feed(this.id, this.caption, this.photo, this.totalLikes, this.createdAt,
      this.user);
}

class User {
  int id;
  String name;
  String photo;
  User(this.id, this.name, this.photo);
}

var user0 = User(0, "Ustadz Abdul Latif",
    "https://tasawufonline.com/wp-content/uploads/2021/03/Abdul-Latif.jpg");
var user1 = User(1, "Maria Gianti Handayani",
    "https://imgx.sonora.id/crop/5x106:799x533/360x240/photo/2022/08/25/negara-eropa-dengan-populasi-mus-20220825114455.jpg");
var user2 = User(2, "Aditia Prayoga",
    "https://thumbs.dreamstime.com/b/arabic-muslim-man-beard-smiling-36429753.jpg");
var user3 = User(3, "Fajar Sidik",
    "https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg");
var user4 = User(4, "M Ihsan Basuki",
    "https://i.pinimg.com/originals/90/52/10/9052103321a96a84d18baa467db2b40d.jpg");
var user5 = User(5, "Rohdian Al Ahad",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5kDOTPlrJlffieEK-I38ODBZF4D6H2NSCEw&usqp=CAU");
var user6 = User(6, "Husein Al-Habsyi",
    "https://wp.en.aleteia.org/wp-content/uploads/sites/2/2017/04/web3-muslim-man-face-young-beard-head-shutterstock_122151928-shutterstock.jpg");
var user7 = User(7, "Ali Farlan Seychan",
    "https://static.toiimg.com/imagenext/toiblogs/photo/blogs/wp-content/uploads/2017/04/asaduddin_fp_0211_dlhtoi_4c.jpg");
var user8 = User(8, "Siti Maryam Ulfah",
    "https://www.harapanrakyat.com/wp-content/uploads/2021/06/Adab-Berbicara-Wanita-Muslimah-Berdasarkan-Agama-Islam.jpg");
var user9 = User(9, "Andy Muhammad",
    "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg");
var user10 = User(10, "Zaenal Andrian",
    "https://i.guim.co.uk/img/media/33c508e9f0c30a90df363e3b5cc3925f0b70f5b6/0_0_3600_2159/master/3600.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6c1e047f1edc4a54f1770458201ed69e");

var feeds = [
  Feed(
      0,
      "Orang hebat bisa melahirkan beberapa karya bermutu. Tetapi guru yang bermutu dapat melahirkan ribuan orang-orang hebat.\n\nSelamat Hari Guru Nasional❤️",
      "https://i.postimg.cc/BvBHdWGY/Screen-Shot-2022-12-25-at-01-03-55.png",
      "50.023 suka",
      "1 jam yang lalu",
      user0),
  Feed(
      1,
      "Nahh, semua orang bisa ko.",
      "https://i.postimg.cc/XvcLbH5J/Screen-Shot-2022-12-25-at-01-40-33.png",
      "6.234 suka",
      "4 jam yang lalu",
      user1),
  Feed(
      2,
      "Ini dia adab-adab saat kamu makan.",
      "https://i.postimg.cc/BQc8Sr62/Screen-Shot-2022-12-25-at-01-22-00.png",
      "99 suka",
      "12 jam yang lalu",
      user2),
  Feed(
      3,
      "Wow masyaallah",
      "https://i.postimg.cc/X78JS9H8/Screen-Shot-2022-12-25-at-01-23-08.png",
      "12.000 suka",
      "1 hari yang lalu",
      user3),
  Feed(
      4,
      "Alhamdulillah jadi tau hehe",
      "https://i.postimg.cc/g0Djd82d/Screen-Shot-2022-12-25-at-01-35-50.png",
      "30 suka",
      "2 hari yang lalu",
      user4),
  Feed(
      5,
      "Yuk bisa yuk!",
      "https://i.postimg.cc/SRzmXMkn/Screen-Shot-2022-12-25-at-01-36-51.png",
      "10.233 suka",
      "3 hari yang lalu",
      user5),
  Feed(
      6,
      "Monggo bisa dicoba guys.",
      "https://i.postimg.cc/wBGv7HLb/Screen-Shot-2022-12-25-at-01-37-40.png",
      "840 suka",
      "6 hari yang lalu",
      user6),
  Feed(
      7,
      "\uD83D\uDE2D\uD83D\uDE2D",
      "https://i.postimg.cc/5yqbqMQJ/Screen-Shot-2022-12-25-at-01-38-30.png",
      "232 suka",
      "1 minggu yang lalu",
      user7),
  Feed(
      8,
      "Indahnya islam,",
      "https://i.postimg.cc/QdvwtyVJ/Screen-Shot-2022-12-25-at-01-39-46.png",
      "2.233 suka",
      "3 minggu yang lalu",
      user8),
  Feed(
      9,
      "Jangan yaaa",
      "https://i.postimg.cc/XqyyVqP8/Screen-Shot-2022-12-25-at-01-42-21.png",
      "90 suka",
      "1 tahun yang lalu",
      user9),
  Feed(
      10,
      "Selamat Hari Santri Nasional",
      "https://i.postimg.cc/d0CTGL6T/Screen-Shot-2022-12-25-at-01-13-25.png",
      "1.012 suka",
      "1 tahun yang lalu",
      user10),
];
