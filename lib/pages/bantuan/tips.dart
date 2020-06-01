import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class TipsDeklamasiMusikalisasi extends StatelessWidget {
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
          "Tips",
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
              height: 10,
            ),
            Text(
              "Tips Mendeklamasikan dan Memusikalisasi Puisi",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListText(
                "Pahamilah suasana, tema, dan makna naskah puisi yang kamu pilih dengan cara memaknai naskah puisi per larik atau bait."),
            MakeListText(
                "Temukan pesan yang ingin disampaikan penyair dalam naskah puisimu."),
            MakeListText(
                "Tentukan nada dan perasaan naskah puisi dengan memberi tanda intonasi pada naskah puisimu."),
            MakeListText(
                "Bacalah naskah puisimu sesuai dengan tanda yang kamu berikan dan koreksi jika ada yang kurang tepat."),
            MakeListText(
                "Berlatihlah sesuai langkah-langkah yang dijelaskan pada menu materi KD 4.16."),
          ],
        ),
      ),
    );
  }
}

class MakeListText extends StatelessWidget {
  final String text;

  const MakeListText(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Transform.translate(
            offset: Offset(-10, 10),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black87),
            ),
          ),
          title: Transform.translate(
            offset: Offset(-25, 0),
            child: Text(
              text,
              style: bodyContent,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
