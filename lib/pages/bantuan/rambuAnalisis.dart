import 'package:flutter/material.dart';
import 'package:media_puisi/pages/bantuan/analisis/analisisPuisi2.dart';
import 'package:media_puisi/pages/bantuan/analisis/analisisPuisi3.dart';
import 'package:media_puisi/pages/bantuan/analisis/analisisPuisi4.dart';
import 'package:media_puisi/pages/bantuan/analisis/analisisPuisi5.dart';
import 'package:media_puisi/pages/bantuan/analisis/analisispuisi1.dart';
import 'package:media_puisi/styles/constanta.dart';

class RambuAnalisisPuisiKelompok extends StatelessWidget {
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
          "Rambu Analisis",
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
              "Rambu Analisis Puisi Kelompok KD 4.16",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            MakeListText("Puisi Ke-1", RambuAnalisisPuisi1()),
            MakeListText("Puisi Ke-2", RambuAnalisisPuisi2()),
            MakeListText("Puisi Ke-3", RambuAnalisisPuisi3()),
            MakeListText("Puisi Ke-4", RambuAnalisisPuisi4()),
            MakeListText("Puisi Ke-5", RambuAnalisisPuisi5()),
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
