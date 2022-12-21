import 'package:flutter/material.dart';
import 'package:market_uygulamasi/kategori.dart';

class Urunler extends StatefulWidget {
  const Urunler({super.key});

  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  late TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: televizyonKontrolcusu,
          indicatorColor: Colors.lightBlue[400],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          tabs: [
            Tab(child: Text("Merdivenler")),
            Tab(child: Text("Kasa ve Kilitler")),
            Tab(child: Text("Mekanik El Aletleri")),
            Tab(child: Text("Ölçü Aletleri")),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: televizyonKontrolcusu,
            children: [
              Kategori(kategori: "merdivenler"),
              Kategori(kategori: "kasa ve kilitler"),
              Kategori(kategori: "mekanik el aletleri"),
              Kategori(kategori: "ölçü aletleri"),
            ],
          ),
        ),
      ],
    );
  }
}
