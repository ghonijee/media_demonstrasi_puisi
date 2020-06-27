import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

import 'definisiPuisi.dart';

class ContohPuisi316 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "Contoh Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 60, left: 60, top: 20, bottom: 60),
        child: Column(
          children: [
            Center(
              child: Text(
                "Salju",
                style: headingContent,
              ),
            ),
            Divider(
              height: 20,
            ),
            MakePuisi(0, "Ke manakah pergi"),
            MakePuisi(20, "Mencari matahari"),
            MakePuisi(40, "Ketika salju turun"),
            MakePuisi(60, "Pohon kehilangan daun"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0, "Ke manakah jalan"),
            MakePuisi(20, "Mencari lindungan"),
            MakePuisi(40, "Ketika tubuh kuyup"),
            MakePuisi(60, "Dan pintu tertutup"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0, "Ke manakah lari"),
            MakePuisi(20, "Mencari api"),
            MakePuisi(40, "Ketika bara hati"),
            MakePuisi(60, "Padam tak berarti"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0, "Ke manakah pergi"),
            MakePuisi(20, "Selain mencuci diri"),
            Divider(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Wing Kardjo",
                style: headingContent,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              heroTag: 'home',
              backgroundColor: PrimaryColor,
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Icon(
                Icons.home,
                color: secondWhite,
              )),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              heroTag: "next",
              backgroundColor: PrimaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => DefinisiPuisi316()));
              },
              child: Icon(Icons.arrow_forward, color: secondWhite)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class MakePuisi extends StatelessWidget {
  final double indent;
  final String text;

  const MakePuisi(this.indent, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: indent),
        Text(
          text,
          style: bodyContent,
        ),
      ],
    );
  }
}
