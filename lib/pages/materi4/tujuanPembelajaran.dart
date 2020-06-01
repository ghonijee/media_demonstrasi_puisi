import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi4/demonstrasipuisi.dart';
import 'package:media_puisi/styles/constanta.dart';

class TujuanPembelajaran416 extends StatelessWidget {
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
          "Tujuan Pembelajaran",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Center(
                child: Image.asset(
                  "assets/images/target.png",
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Kompetensi Dasar",
                style: headingContent,
                textAlign: TextAlign.left,
              ),
              Text(
                "4.16 Mendemonstrasikan (membacakan atau memusikalisasikan) satu puisi dari antologi puisi atau kumpulan puisi dengan memperhatikan vokal, ekspresi, dan intonasi (tekanan dinamik dan tekanan tempo).",
                style: bodyContent,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Tujuan Pembelajaran:",
                style: headingContent,
                textAlign: TextAlign.left,
              ),
              Text(
                "Setelah berlatih membaca atau memusikalisasikan satu puisi dari antologi puisi, siswa dapat:\na.  mendemonstrasikan puisi dengan memperhatikan vokal, artikulasi, irama dan intonasi (tekanan dinamik dan tekanan tempo) secara lisan dengan tepat; dan\nb.  mendemonstrasikan puisi dengan memerhatikan ekspresi, intonasi, mimik wajah, dan gerak tubuh.",
                style: bodyContent,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: PrimaryColor,
                  onPressed: () {
                    Route url = MaterialPageRoute(
                        builder: (_) => DemonstrasiPuisi416());
                    Navigator.push(context, url);
                  },
                  child: Text(
                    "Materi Pembelajaran",
                    style: btnTextPrimary,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
