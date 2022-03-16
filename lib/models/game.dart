class Game {
  String bgImg;
  String icon;
  String name;
  String type;
  num score;
  num downloads;
  num review;
  String desc;
  List<String> imgs;

  Game(
      {required this.bgImg,
      required this.icon,
      required this.name,
      required this.type,
      required this.score,
      required this.downloads,
      required this.review,
      required this.desc,
      required this.imgs});

  static List<Game> generateGame() {
    return [
      Game(
          bgImg: "assets/images/ori1.jpg",
          icon: "assets/images/ori_logo.png",
          name: "Ori and the Blind Forest",
          type: "Adventure",
          score: 4.5,
          downloads: 354,
          review: 200,
          desc: "The beautiful game, every kids should play this once",
          imgs: [
            "assets/images/ori1.jpg",
            "assets/images/ori2.jpg",
            "assets/images/ori3.jpg"
          ]),
      Game(
          bgImg: "assets/images/ori2.jpg",
          icon: "assets/images/ori_logo.png",
          name: "Ori and the Blind Forest",
          type: "Adventure",
          score: 4.5,
          downloads: 354,
          review: 200,
          desc: "The beautiful game, every kids should play this once",
          imgs: [
            "assets/images/ori1.jpg",
            "assets/images/ori2.jpg",
            "assets/images/ori3.jpg"
          ]),
      Game(
          bgImg: "assets/images/ori3.jpg",
          icon: "assets/images/ori_logo.png",
          name: "Ori and the Blind Forest",
          type: "Adventure",
          score: 4.5,
          downloads: 354,
          review: 200,
          desc: "The beautiful game, every kids should play this once",
          imgs: [
            "assets/images/ori1.jpg",
            "assets/images/ori2.jpg",
            "assets/images/ori3.jpg"
          ])
    ];
  }
}
