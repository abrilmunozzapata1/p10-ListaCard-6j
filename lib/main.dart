import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatefulWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  State<MiListaCard> createState() => _MiListaCardState();
}

class _MiListaCardState extends State<MiListaCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi ListView Munoz",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/avatar1.jpg",
    "assets/images/avatar2.jpg",
    "assets/images/avatar3.jpg",
    "assets/images/avatar4.jpg",
    "assets/images/cinco.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Munoz"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("El Titulo"),
              subtitle: Text("El Subtitulo"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
