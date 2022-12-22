import 'package:flutter/material.dart';
import 'package:market_uygulamasi/urunDetay.dart';

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
        urunKarti(
          "Mutlu Merdiven",
          "317 TL",
          "https://cdn.dsmcdn.com/ty117/product/media/images/20210525/13/91537299/178005658/2/2_org_zoom.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Leo Merdiven",
          "296.54 TL",
          "https://cdn.dsmcdn.com/ty181/product/media/images/20210920/21/134328421/247195347/0/0_org_zoom.jpg",
        ),
        urunKarti(
          "Yılmaz Yapı Merdiven",
          "399 TL",
          "https://cdn.dsmcdn.com/ty410/product/media/images/20220426/14/98501761/459650992/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "5+1 Merdiven",
          "599 TL",
          "https://cdn.dsmcdn.com/ty495/product/media/images/20220802/10/153541997/62664133/1/1_org_zoom.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "kasa ve kilitler") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Çanta Yurdu Kasa",
          "3000 TL",
          "https://cdn.dsmcdn.com/ty619/product/media/images/20221202/0/225693439/637262274/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Cam ve Çekmece Kilidi",
          "948 TL",
          "https://cdn.dsmcdn.com/ty226/product/media/images/20211105/12/166141571/288960209/1/1_org_zoom.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Şifreli Kasa Kumbara",
          "767 TL",
          "https://cdn.dsmcdn.com/ty657/product/media/images/20221221/23/243573434/656714551/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Kitap Görünümlü Gizli Kasa",
          "537 TL",
          "https://cdn.dsmcdn.com/ty512/product/media/images/20220818/11/162223396/546856038/1/1_org_zoom.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "mekanik el aletleri") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Mekanik Zımba Tabancası",
          "89 TL",
          "https://cdn.dsmcdn.com/ty85/product/media/images/20210313/16/71107335/102807739/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Dikiş Makinesi",
          "3999 TL",
          "https://cdn.dsmcdn.com/ty590/product/media/images/20221106/0/208368237/459611792/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Mekanik Kumpas",
          "154 TL",
          "https://cdn.dsmcdn.com/ty562/product/media/images/20221013/18/193012762/418885795/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Çivi Tabancası",
          "11750 TL",
          "https://cdn.dsmcdn.com/ty343/product/media/images/20220301/9/60361961/153049033/3/3_org_zoom.jpg",
        ),
      ];
    } else if (widget.kategori == "ölçü aletleri") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Avometre",
          "89 TL",
          "https://cdn.dsmcdn.com/ty495/product/media/images/20220803/12/154044336/62282406/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Dijital Avometre",
          "83 TL",
          "https://cdn.dsmcdn.com/ty325/product/media/images/20220206/16/45868739/60493575/1/1_org_zoom.jpg",
        ),
        urunKarti(
          "Dijital Multimetre Ölçü Aleti",
          "134 TL",
          "https://cdn.dsmcdn.com/ty402/product/media/images/20220418/17/93652011/65817072/1/1_org_zoom.jpg",
        ),
      ];
    }

    super.initState();
  } // init state

  Widget urunKarti(String urunIsim, String urunFiyat, String urunResimYolu, {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UrunDetay(
              isim: urunIsim,
              fiyat: urunFiyat,
              resimYolu: urunResimYolu,
              mevcut: mevcut,
            )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: urunResimYolu,
              child: Container(
                width: 70.0,
                height: 90.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(urunResimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              urunIsim,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              urunFiyat,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
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
