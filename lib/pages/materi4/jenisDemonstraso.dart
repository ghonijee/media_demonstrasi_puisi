import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/definisiDeklamasi.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/definisiMusikalisasi.dart';
import 'package:media_puisi/styles/constanta.dart';

class JenisDemonstrasi extends StatelessWidget {
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
          "Demonstrasi Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jenis Demonstrasi Puisi",
              style: headingContent,
            ),
            Divider(
              height: 20,
            ),
            Text(
              "Demonstrasi puisi meliputi:",
              style: bodyContent,
            ),
            MakeNumbList(1, "Deklamasi Puisi"),
            MakeNumbList(2, "Pembacaan Puisi"),
            MakeNumbList(3, "Musikalisasi Puisi"),
            MakeNumbList(4, "Teatrikalisasi Puisi"),
            MakeNumbList(5, "Puitisasi Al-Qur'an (Tilawah)"),
            MakeNumbList(6, "Koreografi Puisi"),
            SizedBox(
              height: 15,
            ),
            Text(
              "Meskipun demikian, dalam aplikasi ini hanya akan dibahas dua jenis demonstrasi puisi, yaitu deklamasi dan musikalisasi puisi sesuai dengan KD 4.16 untuk siswa SMA/SMK.",
              style: bodyContent,
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: secondOrange,
                onPressed: () {
                  Route url = MaterialPageRoute(
                      builder: (_) => DefinisiDeklamasiPuisi());
                  Navigator.push(context, url);
                },
                child: Text(
                  "Deklamasi Puisi",
                  style: btnTextPrimary,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: secondOrange,
                onPressed: () {
                  Route url = MaterialPageRoute(
                      builder: (_) => DefinisiMusikalisasiPuisi());
                  Navigator.push(context, url);
                },
                child: Text(
                  "Musikalisasi Puisi",
                  style: btnTextPrimary,
                ),
              ),
            ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Latihan())); //pergi ke soal
              },
              child: Icon(Icons.library_books, color: secondWhite)),
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
