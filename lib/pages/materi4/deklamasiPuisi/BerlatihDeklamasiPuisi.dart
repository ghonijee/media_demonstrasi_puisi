import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/latihanAwal/ekspresi.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/latihanAwal/konsentrasi.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/latihanAwal/olahNapas.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/latihanAwal/olahVokal.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/latihanAwal/penghayatan.dart';
import 'package:media_puisi/styles/constanta.dart';

import 'latihanAwal/pemanasan.dart';

class BerlatihDeklamasiPuisi extends StatelessWidget {
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
          "Langkah Berlatih Deklamasi Puisi",
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
        padding: EdgeInsets.fromLTRB(30, 10, 30, 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              "1. Langkah Awal",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            MakeListText("Konsentrasi", LangkahKonsentrasi()),
            MakeListText("Pemanasan", LangkahPemanasan()),
            MakeListText("Olah Napas", OlahNapas()),
            MakeListText("Olah Vokal", OlahVokal()),
            MakeListText("Penghayatan", Penghayatan()),
            MakeListText("Ekspresi", Ekspresi()),
            SizedBox(
              height: 15,
            ),
            Text(
              "2. Langkah Lanjutan",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Membaca puisi dengan memperhatikan vokal, penghayatan, dan ekspresi.",
              style: bodyContent,
            ),
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
