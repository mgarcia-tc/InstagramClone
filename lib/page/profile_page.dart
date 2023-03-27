import 'package:flutter/material.dart';
import 'package:instagram_app/page/home_page.dart';
import 'package:instagram_app/page/search_page.dart';
import 'package:provider/provider.dart';

import '../providers/busqueda_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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

    return FutureBuilder(
        future: Provider.of<BusquedaProvider>(context, listen: false)
            .getImgChicas(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Color.fromRGBO(250, 250, 250, 1),
                elevation: 0.1,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "tammy.parra",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        SizedBox(width: 19),
                        Icon(Icons.more_vert, color: Colors.black, size: 32)
                      ],
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomAppBar(
                child: SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () =>
                              Navigator.pushReplacementNamed(context, "home"),
                          icon: const Icon(Icons.home_filled,
                              color: Colors.black),
                          iconSize: 35),
                      IconButton(
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, "search"),
                        icon: const Icon(Icons.search_rounded,
                            color: Colors.black),
                        iconSize: 35,
                      ),
                      Image.asset(
                        "assets/mas.png",
                        height: 28,
                        width: 28,
                      ),
                      Image.asset("assets/video.png", height: 29, width: 29),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 21,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://i.pinimg.com/736x/1a/18/f3/1a18f35661f1db7163be608facdd7813.jpg"),
                                radius: 20,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.red,
                            width: 2,
                            height: 2,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const HederBio(),
                    const Bio(),
                    const Seguidores(),
                    const Botones(),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: ScrollHistorias(arreglo: arreglo),
                    ),
                    const SeccionesPerfil(),
                    const ImagenesPerfil()
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class ImagenesPerfil extends StatelessWidget {
  const ImagenesPerfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 12),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 3,
      children: Provider.of<BusquedaProvider>(context)
          .imagesResults
          .map((e) => ImgSearch(pathImg: e.thumbnail))
          .toList(),
    );
  }
}

class SeccionesPerfil extends StatelessWidget {
  const SeccionesPerfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.grid_on,
              size: 30,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/video.png",
                height: 26,
                width: 26,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.assignment_ind_outlined,
                size: 35,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey[200])),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: const [
                  Text(
                    "Siguiendo",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey[200])),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Mensajes",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[200])),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text("Correo",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
              )),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey[200])),
              child: const Icon(
                Icons.person_add_outlined,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}

class Seguidores extends StatelessWidget {
  const Seguidores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Stack(
              children: const [
                Positioned(
                  left: 27,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 21,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/736x/1a/18/f3/1a18f35661f1db7163be608facdd7813.jpg"),
                        radius: 20,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 21,
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/736x/1a/18/f3/1a18f35661f1db7163be608facdd7813.jpg"),
                      radius: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RichText(
              maxLines: 2,
              text: const TextSpan(
                text: "mish_mend, tammylashesco",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: " y ",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: "28 personas más",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " siguen esta cuenta",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Bio extends StatelessWidget {
  const Bio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      padding: const EdgeInsets.only(top: 7, left: 14),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Figura pública",
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
          SizedBox(height: 3),
          const Text("👁️@tammylashesco",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 19, 59, 128))),
          SizedBox(height: 3),
          const Text("Twitter -tammyparraa",
              style: TextStyle(fontSize: 16, color: Colors.black)),
          SizedBox(height: 3),
          const Text("fb Tammy Parra",
              style: TextStyle(fontSize: 16, color: Colors.black)),
          SizedBox(height: 3),
          RichText(
            text: const TextSpan(
                text: "manager",
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: [
                  TextSpan(
                      text: "@digileap.co",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 19, 59, 128)))
                ]),
          ),
          SizedBox(height: 3),
          const Text("Ver Traducción",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          const Text("tammyparra.com",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 19, 59, 128)))
        ],
      ),
    );
  }
}

class HederBio extends StatelessWidget {
  const HederBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
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
                child: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 56,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 53,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://yt3.googleusercontent.com/ytc/AL5GRJWonHgQkCVlcNvSd9-X9v6gwMHfkNE0gZwYaa0HDKM=s900-c-k-c0x00ffffff-no-rj"),
                        radius: 52,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text("⚡Tammy⚡",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black))
          ],
        ),
        SizedBox(
          height: 100,
          width: 82,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("309",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              Text("Publicaciones",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      overflow: TextOverflow.ellipsis))
            ],
          ),
        ),
        SizedBox(
          height: 100,
          width: 82,
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("3.5 mill.",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
                Text("Seguidores",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("1,075",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
              Text("Seguidos",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis))
            ],
          ),
        )
      ],
    );
  }
}
