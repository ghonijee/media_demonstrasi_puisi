import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi3/contohAnalisis.dart';
import 'package:media_puisi/styles/constanta.dart';

class LangkahAnalisis316 extends StatelessWidget {
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
          "Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 60, left: 60, top: 20, bottom: 60),
        child: Column(
          children: [
            Text(
              "Langkah Menganalisis Suasana, Tema, dan Makna",
              style: headingContent,
            ),
            Divider(
              height: 20,
            ),
            MakeNumbList(1, "Memaknai setiap diksi dalam puisi"),
            MakeNumbList(2, "Memaknai setiap larik puisi (makna larik)"),
            MakeNumbList(3, "Memaknai setiap bait puisi (makna bait)"),
            MakeNumbList(4, "Memaknai secara keseluruhan (totalitas makna"),
            MakeNumbList(5, "Menentukan suasana puisi dari makna keseluruhan"),
            MakeNumbList(6, "Menemukan tema puisi dari makna keseluruhan"),
            MakeNumbList(7, "Menemukan pesan puisi dari makna keseluruhan"),
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
                    MaterialPageRoute(builder: (_) => ContohAnalisis()));
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

class MakeNumbList extends StatelessWidget {
  final int no;
  final String text;

  const MakeNumbList(this.no, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            no.toString(),
            style: bodyContent,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: bodyContent,
            ),
          ),
        ],
      ),
    );
  }
}
