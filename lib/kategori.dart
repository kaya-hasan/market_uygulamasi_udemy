import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({super.key, required this.kategori});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  @override
  void initState() {
    if (widget.kategori == "merdivenler") {
      gosterilecekListe = <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    } else if (widget.kategori == "kasa ve kilitler") {
      gosterilecekListe = <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ];
    } else if (widget.kategori == "mekanik el aletleri") {
      gosterilecekListe = <Widget>[
        Container(color: Colors.teal),
        Container(color: Colors.red),
        
      ];
    } else if (widget.kategori == "ölçü aletleri") {
      gosterilecekListe = <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.green),
      ];
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0, // alt alta
      crossAxisSpacing: 12.0, // yanyana
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1.0,
      children: gosterilecekListe,
    );
  }
}
