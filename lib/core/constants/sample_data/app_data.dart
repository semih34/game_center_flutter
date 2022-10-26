class SampleAppData {
  static List<Transfer> transfers = [
    Transfer(
      name: "Semih",
      url:
          "https://avatars.githubusercontent.com/u/10244761?s=400&u=4431ef3bed7c9dad72c6c3546deca3d93e78aac3&v=4",
    ),
    Transfer(
      name: "Jane",
      url:
          "https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-5.jpg",
    ),
    Transfer(
      name: "Taner",
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRoYlseDUagsVXTex4AwAsShamSOlOOlbhA&usqp=CAU",
    ),
    Transfer(
      name: "Tom",
      url: "https://static.generated.photos/vue-static/home/hero/6.png",
    ),
    Transfer(
      name: "Euanthe",
      url:
          "https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-6.jpg",
    ),
    Transfer(
      name: "Hanne",
      url:
          "https://static.generated.photos/vue-static/home/feed/latino-male.png",
    ),
  ];
  static List<Point> points = [
    Point(
      title: "Stray",
      subtitle: "Adventures",
      pt: 125,
      url: "https://upload.wikimedia.org/wikipedia/en/f/f1/Stray_cover_art.jpg",
    ),
    Point(
      title: "Raft. The final chapter",
      subtitle: "Survival",
      pt: 75,
      url:
          "https://cdn.akamai.steamstatic.com/steamcommunity/public/images/clans/30560232/02e4fb668c629e04b8de87590a8327f26a15c0e1.png",
    ),
    Point(
      title: "Genshin Impact",
      subtitle: "Action/RPG",
      url:
          "https://img.bolumsonucanavari.com/images/Upload/028d3db8-b32d-4b44-86b7-e1ed58f2bc2d.jpg",
      pt: 100,
    ),
  ];

  static List<Point> bestsellers = [
    Point(
      title: "Phasmophobia",
      subtitle: "Horror",
      url: "https://static-cdn.jtvnw.net/ttv-boxart/518184_IGDB-272x380.jpg",
      pt: 150,
    ),
    Point(
      title: "Terraria",
      subtitle: "Platformer",
      url:
          "https://cdn.cloudflare.steamstatic.com/steam/apps/105600/header.jpg?t=1666290860",
      pt: 75,
    ),
    Point(
        title: "Elden Ring",
        subtitle: "Action/RPG",
        url:
            "https://image.api.playstation.com/vulcan/ap/rnd/202108/0410/2odx6gpsgR6qQ16YZ7YkEt2B.png",
        pt: 550)
  ];

  static User user = User(
    avatar:
        "https://avatars.githubusercontent.com/u/10244761?s=400&u=4431ef3bed7c9dad72c6c3546deca3d93e78aac3&v=4",
    name: "Semih",
  );
}

class Transfer {
  final String name;
  final String url;

  Transfer({required this.name, required this.url});
}

class Point {
  final String title;
  final String subtitle;
  final String url;
  final int pt;

  Point(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.pt});
}

class User {
  final String avatar;
  final String name;

  User({required this.avatar, required this.name});
}
