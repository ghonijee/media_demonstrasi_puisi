import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class KelompokPuisi1 extends StatefulWidget {
  @override
  _KelompokPuisi1State createState() => _KelompokPuisi1State();
}

class _KelompokPuisi1State extends State<KelompokPuisi1> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/musik_musikalisasi/puisi1.mp3";

  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      _assetsAudioPlayer.open(Audio(urlAudio), respectSilentMode: true);
    });
    super.initState();
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }

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
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Hujan Bulan Juni",
                  style: headingContent,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    _assetsAudioPlayer.open(Audio(urlAudio),
                        respectSilentMode: true);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/audio_icon.png")),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            MakePuisi(0, "Tak ada yang lebih tabah"),
            MakePuisi(0, "Dari hujan bulan juni"),
            MakePuisi(0, "Dirahasiakannya rintik rindunya"),
            MakePuisi(0, "Kepada pohon berbunga itu"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Tak ada yang lebih bijak \nDari hujan bulan juni \nDihapusnya jejak kakinya \nYang ragu-ragu di jalan itu"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Tak ada yang lebih arif \nDari hujan bulan juni \nDibiarkannya yang tak terucapkan \nDiserap akar pohon bunga itu"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(40, "(Sapardi Djoko Damono, 1989)"),
          ],
        ),
      ),
    );
  }
}

class MakePuisi extends StatelessWidget {
  final double indent;
  final String text;

  const MakePuisi(this.indent, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: indent),
        Text(
          text,
          style: bodyContent,
        ),
      ],
    );
  }
}
