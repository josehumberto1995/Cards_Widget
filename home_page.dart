import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          title: const Text('Widget CARD'),
        ),
        body: ListView(
          children: <Widget>[
            miCard(),
            miCardImage(),
          ],
        ));
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('IQUITOS'),
            subtitle: Text(
                'Iquitos es una ciudad puerto peruana y una vía de acceso a los alojamientos en la selva y las villas del norte del Amazonas.'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );

  }

  Card miCardImage() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          const Image(
            image: NetworkImage(
                'https://iquitostravelguide.com/wp-content/uploads/2017/11/que-lugares-visitar-dentro-de-iquitos-1024x576.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Vista aerea de Iquitos'),
          ),
        ],
      ),
    );
  }
}