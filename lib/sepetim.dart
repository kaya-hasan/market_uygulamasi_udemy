import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
        ),
        ListTile(
          title: Text("Geçmeli Kapı Altı Süngeri"),
          subtitle: Text("2 adet x 8.89₺"),
          trailing: Text("17.78₺"),
        ),
        ListTile(
          title: Text("Kapı Altı Rüzgar Önleyici"),
          subtitle: Text("3 adet x 129.50₺"),
          trailing: Text("388.50₺"),
        ),
        ListTile(
          title: Text("Nitril Eldiven"),
          subtitle: Text("2 adet x 10.64₺"),
          trailing: Text("21.28₺"),
        ),
        SizedBox(
          height: 19.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[400],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "427.56₺",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 19.0,
        ),
        Padding(
          padding: const EdgeInsets.all(23.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlue,
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
