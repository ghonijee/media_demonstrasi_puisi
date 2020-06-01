import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class LangkahMemaknaiPuisiDeklamasi extends StatelessWidget {
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
          "Langkah Memaknai Puisi",
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
        child: Column(
          children: <Widget>[
            MakeListText(
                "Memaknai setiap diksi dalam puisi memaknai setiap larik puisi (makna larik)"),
            MakeListText("Memaknai setiap bait puisi (makna bait)"),
            MakeListText("Memaknai secara keseluruhan (totalitas makna)"),
            MakeListText("Menemukan tema puisi dari makna keseluruhan"),
            MakeListText("Menentukan suasana puisi dari makna keseluruhan"),
            MakeListText("Menemukan pesan puisi dari makna keseluruhan."),
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
          leading: Icon(Icons.stop),
          title: Text(
            text,
            style: bodyContent,
          ),
        ),
        Divider(),
      ],
    );
  }
}
