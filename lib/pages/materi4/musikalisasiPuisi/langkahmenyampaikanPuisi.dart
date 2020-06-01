import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/tahapMenyampaikan/MusikalisasiAwal.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/tahapMenyampaikan/langkahMusikalisasiCampuran.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/tahapMenyampaikan/langkahMusikalisasiTerapan.dart';
import 'package:media_puisi/styles/constanta.dart';

class LangkahMenyampaikanPuisi extends StatelessWidget {
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
          "Langkah Menyampaikan Puisi",
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
          // FloatingActionButton(
          //     heroTag: "next",
          //     backgroundColor: PrimaryColor,
          //     onPressed: () {
          //       // Navigator.push(context,
          //       //     MaterialPageRoute(builder: (_) => ContohAnalisis()));
          //     },
          //     child: Icon(Icons.arrow_forward, color: secondWhite)),
          // SizedBox(
          //   width: 10,
          // ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Langkah-langkah untuk menyampaikan puisi dengan musik terdapat tiga jenis, yaitu: ",
              style: bodyContent,
            ),
            SizedBox(
              height: 5,
            ),
            MakeListText("Musikalisasi Awal", LangkahMusikalisasiAwal()),
            MakeListText("Musikalisasi Terapan", LangkahMusikalisasiTerapan()),
            MakeListText(
                "Musikalisasi Campuran", LangkahMusikalisasiCampuran()),
          ],
        ),
      ),
    );
  }
}

class MakeListText extends StatelessWidget {
  final String text;
  final Widget nextPage;

  const MakeListText(this.text, this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text(
              text,
              style: bodyContent,
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Route url = MaterialPageRoute(builder: (_) => nextPage);
              Navigator.push(context, url);
            },
          ),
        ),
        // Divider(),
      ],
    );
  }
}
