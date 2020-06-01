import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi3/ContohPuisi.dart';
import 'package:media_puisi/styles/constanta.dart';

class TujuanPembelajaran316 extends StatelessWidget {
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
                "3.16 Menganalisis suasana, tema, dan makna beberapa puisi yang terkandung dalam antologi puisi yang didengarkan atau dibaca.",
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
                "Setelah menganalisis puisi yang dibaca atau didengarkan, siswa dapat: \na.  menentukan suasana puisi yang dibaca atau didengarkan secara tulis dengan tepat; \nb. Menemukan makna puisi yang dibaca atau didengarkan secara tulis dengan tepat; dan \nc. menentukan tema puisi yang dibaca atau didengarkan secara tulis dengan tepat. ",
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
                    Route url =
                        MaterialPageRoute(builder: (_) => ContohPuisi316());
                    Navigator.push(context, url);
                  },
                  child: Text(
                    "Materi Pembelajaran",
                    style: btnTextPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
