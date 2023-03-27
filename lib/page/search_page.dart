import 'package:flutter/material.dart';
import 'package:instagram_app/providers/busqueda_provider.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Provider.of<BusquedaProvider>(context, listen: false).getImgChicas(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return SafeArea(
            child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 53,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.home_filled, color: Colors.black),
                      iconSize: 35),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded, color: Colors.black),
                    iconSize: 35,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/mas.png",
                        height: 28,
                        width: 28,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/video.png",
                          height: 29, width: 29)),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 21,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/736x/1a/18/f3/1a18f35661f1db7163be608facdd7813.jpg"),
                          radius: 20,
                        ),
                      )),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Search(),
                !snapshot.hasData
                    ? const PantallaCarga()
                    : Provider.of<BusquedaProvider>(context).busquedaRealizada
                        ? ResultadosBusqueda()
                        : const TablaImagenes(),
              ],
            ),
          ),
        ));
      },
    );
  }
}

class ResultadosBusqueda extends StatelessWidget {
  const ResultadosBusqueda({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Secciones(),
        ResultadoBusqueda(),
        ResultadoBusqueda(),
        ResultadoBusqueda(),
        ResultadoBusqueda(),
        ResultadoBusqueda(),
        ResultadoBusqueda(),
      ],
    );
  }
}

class ResultadoBusqueda extends StatelessWidget {
  const ResultadoBusqueda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "profile"),
      child: SizedBox(
        height: 100,
        child: Row(
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
                  radius: 44,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://yt3.googleusercontent.com/ytc/AL5GRJWonHgQkCVlcNvSd9-X9v6gwMHfkNE0gZwYaa0HDKM=s900-c-k-c0x00ffffff-no-rj"),
                        radius: 39,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("tammy.parra",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text("⚡Tammy⚡",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.grey)),
                Text("5 publicaciones nuevas",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.grey))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TablaImagenes extends StatelessWidget {
  const TablaImagenes({
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

class PantallaCarga extends StatelessWidget {
  const PantallaCarga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
        child: const CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class Secciones extends StatelessWidget {
  const Secciones({
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
              Icons.menu,
              size: 35,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline, size: 35)),
          IconButton(
              onPressed: () {},
              icon: Image.asset("assets/musica.png", height: 24, width: 24)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.tag, size: 35)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on_outlined, size: 35))
        ],
      ),
    );
  }
}

class ImgSearch extends StatelessWidget {
  final String pathImg;

  const ImgSearch({
    super.key,
    required this.pathImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      height: 133,
      width: 133,
      child: Image.network(
        pathImg,
        fit: BoxFit.cover,
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BusquedaProvider busquedaProvider = Provider.of<BusquedaProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            if (busquedaProvider.busquedaTexto.isNotEmpty)
              IconButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    busquedaProvider.cambiarTexto("");
                  },
                  icon: const Icon(Icons.arrow_back)),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 20, left: 10),
                child: TextField(
                  onSubmitted: (value) {
                    busquedaProvider.realizarBusqueda();
                  },
                  onChanged: (value) {
                    busquedaProvider.cambiarTexto(value);
                  },
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 239, 239, 239),
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    hintText: 'Buscar',
                    hintStyle: const TextStyle(fontSize: 19),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
