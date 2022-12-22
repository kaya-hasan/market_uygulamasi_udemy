import 'package:flutter/material.dart';
import 'package:market_uygulamasi/sepetim.dart';
import 'package:market_uygulamasi/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 1;
  late List<Widget> _icerikler;
  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(
        NetworkImage(
            "https://cdn.dsmcdn.com/ty117/product/media/images/20210525/13/91537299/178005658/2/2_org_zoom.jpg"),
        context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.orange[700]),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Hırdavat Sepeti",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Hasan Kaya"),
              accountEmail: Text("h3kaya5@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/58564918?v=4"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.orange[700]),
            ),
            ListTile(title: Text("Siparişlerim"), onTap: () {},),
            ListTile(title: Text("İndirim Kuponlarım"), onTap: () {},),
            ListTile(title: Text("Hırdavat Asistant"), onTap: () {},),
            ListTile(title: Text("Hırdavat Cüzdanım"), onTap: () {},),
            ListTile(title: Text("Ayarlar"), onTap: () {},),
            ListTile(title: Text("Çıkış Yap"), onTap: () {
              Navigator.pop(context);
            },),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ürünler"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Sepetim"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
