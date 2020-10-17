import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/kelompok/puisiKelompok/puisi1.dart';
import 'package:media_puisi/pages/latihan/kelompok/puisiKelompok/puisi2.dart';
import 'package:media_puisi/pages/latihan/kelompok/puisiKelompok/puisi3.dart';
import 'package:media_puisi/pages/latihan/kelompok/puisiKelompok/puisi4.dart';
import 'package:media_puisi/pages/latihan/kelompok/puisiKelompok/puisi5.dart';
import 'package:media_puisi/styles/constanta.dart';

class DaftarPuisisKelompok extends StatelessWidget {
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
          "Latihan Materi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
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
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 70),
        child: Column(
          children: <Widget>[
            Text(
              "Buatlah kelompok yang terdiri dari 4-5 anak. Kemudian pilihlah puisi yang tersedia di bawah ini untuk dimusikalisasikan bersama kelompokmu. Lalu pilihlah instrumen musik yang akan digunakan untuk mengiringi musikalisasi puisi kelompokmu. Lakukan tahap-tahap memusikalisasikan puisi seperti di materi sebelumnya.",
              style: bodyContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListPuisi("Hujan Bulan Juni – Sapardi Djoko damono",
                "Lagu rindu - Kerispatih", KelompokPuisi1()),
            MakeListPuisi("Keranda - Joko Pinurbo",
                "Iwan Fals - Ibu", KelompokPuisi2()),
            MakeListPuisi(
                "Peringatan - Wiji Thukul",
                "Darah Juang - Cover oleh: Wafi Alkhoeriah dan Divo",
                KelompokPuisi3()),
            MakeListPuisi("Diponegoro – Chairil Anwar",
                "Gugur Bunga – Setia Band", KelompokPuisi4()),
            MakeListPuisi("Kangen – W.S Rendra", "Rindu Setengah Mati– D’Masiv",
                KelompokPuisi5()),
          ],
        ),
      ),
    );
  }
}

class MakeListPuisi extends StatelessWidget {
  final String judulPuisi;
  final String judulLagu;
  final Widget nextPage;
  const MakeListPuisi(this.judulPuisi, this.judulLagu, this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(judulPuisi),
        subtitle: Text(judulLagu),
        leading: Icon(Icons.music_note),
        onTap: () {
          Route url = MaterialPageRoute(builder: (_) => nextPage);
          Navigator.push(context, url);
        },
      ),
    );
  }
}
