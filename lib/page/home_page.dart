import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final arreglo = [
      {
        "urlImg":
            "https://i.pinimg.com/736x/1a/18/f3/1a18f35661f1db7163be608facdd7813.jpg",
        "nombre": "Tu historia"
      },
      {
        "urlImg":
            "https://yt3.googleusercontent.com/ytc/AL5GRJWonHgQkCVlcNvSd9-X9v6gwMHfkNE0gZwYaa0HDKM=s900-c-k-c0x00ffffff-no-rj",
        "nombre": "Tammy.parra"
      },
      {
        "urlImg":
            "https://i.pinimg.com/280x280_RS/79/85/54/798554d02cd7df6521006cfa411b1137.jpg",
        "nombre": "ximenarobles"
      },
      {
        "urlImg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb7TtcX8NKxIpZi8j53YaakxaIkPI_7GIwMA&usqp=CAU",
        "nombre": "joerojas_95"
      },
      {
        "urlImg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo16TPMajyAHmkkTipqn4xH0Ck56Yn6_LcYVUCeqRV&s",
        "nombre": "Itzel.villalvazo"
      },
      {
        "urlImg":
            "https://media.glamour.mx/photos/629eb28ce50e12ec75e20c93/master/w_1600%2Cc_limit/macapiel.jpg",
        "nombre": "macaachiaga"
      },
      {
        "urlImg":
            "https://cdn.milenio.com/uploads/media/2022/09/01/juanpa-zurita-instagram.jpg",
        "nombre": "JuanPa"
      },
      {
        "urlImg": "https://pbs.twimg.com/media/EAmwUANXkAU_rIr.jpg",
        "nombre": "Jared.Spyker"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScrollHistorias(arreglo: arreglo),
            const Divider(
              color: Color.fromARGB(255, 82, 82, 82),
              thickness: 0.5,
            ),
            Post(),
          ],
        ),
      ),
    );
  }

  AppBar _appBarHome() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.network(
              "https://1000marcas.net/wp-content/uploads/2019/11/Logo-Instagram.png",
              height: 130,
              width: 130,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            iconSize: 33,
          ),
          SizedBox(width: 15),
          Image.asset(
            "assets/messenger.png",
            height: 28,
            width: 28,
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ScrollHistorias extends StatelessWidget {
  const ScrollHistorias({
    Key? key,
    required this.arreglo,
  }) : super(key: key);

  final List<Map<String, String>> arreglo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127,
      child: Expanded(
        child: ListView.builder(
          itemCount: arreglo.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Historia(
              nombre: arreglo[index]["nombre"]!,
              urlImg: arreglo[index]["urlImg"]!,
            );
          },
        ),
      ),
    );
  }
}

class Historia extends StatelessWidget {
  final String urlImg;
  final String nombre;

  const Historia({super.key, required this.urlImg, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xff405DE6),
                  Color(0xff5B51D8),
                  Color(0xff833AB4),
                  Color(0xffC13584),
                  Color(0xffE1306C),
                  Color(0xffFD1D1D),
                  Color(0xffF56040),
                  Color(0xffF77737),
                  Color(0xffFCAF45),
                  Color(0xffFFDC80),
                ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 44,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 41,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(urlImg),
                    radius: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(nombre)
      ],
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 700,
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: ((context, index) {
            return CrearPost();
          })),
    );
  }
}

class CrearPost extends StatelessWidget {
  const CrearPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderPost(),
        Container(
          child: Image.network(
              "https://scontent-atl3-1.cdninstagram.com/v/t51.2885-15/326762567_892605942083402_8223450535531935603_n.jpg?stp=dst-jpg_e35_s1080x1080&_nc_ht=scontent-atl3-1.cdninstagram.com&_nc_cat=1&_nc_ohc=6rXMMGg4BK0AX8R23ZN&edm=APU89FABAAAA&ccb=7-5&oh=00_AfB-_i5136GxUspz8XRnpGGnz3Xp4oqo-dq5XHIsG9QJBQ&oe=6421C2A5&_nc_sid=86f79a"),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
              iconSize: 35,
            ),
            const SizedBox(width: 14),
            Image.asset(
              "assets/comment.png",
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 19),
            Image.asset(
              "assets/enviar.png",
              height: 28,
              width: 28,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border),
              iconSize: 37,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("17,674 Me gusta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: const TextSpan(
                  text: 'tammy.parra',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            ' Solo algunos saben lo que hay detrás de estás fotos jiji',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 17)),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              const Text("ver los 157 comentarios", 
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.grey),),
              const SizedBox(height: 5,),
              RichText(
                text: const TextSpan(
                  text: 'Hace 37 minutos',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10, color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            ' ° Ver traducción',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 10, color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HeaderPost extends StatelessWidget {
  const HeaderPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color(0xff405DE6),
                  Color(0xff5B51D8),
                  Color(0xff833AB4),
                  Color(0xffC13584),
                  Color(0xffE1306C),
                  Color(0xffFD1D1D),
                  Color(0xffF56040),
                  Color(0xffF77737),
                  Color(0xffFCAF45),
                  Color(0xffFFDC80),
                ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 23,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 21,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/236x/50/8a/59/508a59707e76feb398bb22b2b62d288a.jpg"),
                    radius: 19,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Text(
          "Sofía",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const Expanded(child: SizedBox()),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
      ],
    );
  }
}
