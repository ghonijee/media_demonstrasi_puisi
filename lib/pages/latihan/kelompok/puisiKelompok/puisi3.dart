import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class KelompokPuisi3 extends StatefulWidget {
  @override
  _KelompokPuisi3State createState() => _KelompokPuisi3State();
}

class _KelompokPuisi3State extends State<KelompokPuisi3> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/musik_musikalisasi/puisi3.mp3";

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
                  "Peringatan",
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
            MakePuisi(0,
                "Jika rakyat pergi \nKetika penguasa pidato \nKita harus hati-hati \nBarangkali penguasa putus asa"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Kalau rakyat bersembunyi  \nDan berbisik-bisik \nKetika membicarakan masalahnya sendiri \nPenguasa harus waspada dan belajar mendengar"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Bila rakyat tidak berani mengeluh \nItu berarti sudah gawat \nDan bila omongan penguasa \nTidak boleh dibantah \nKebenaran pasti terancam"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Apabila usul ditolak tanpa ditimbang \nBicara dibungkam kritik dibuang tanpa alasan \nDituduh subversif dan mengganggu keamanan \nMaka hanya ada satu kata \nLAWAN!"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(40, "(Wiji Thukul, 1986)"),
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
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: bodyContent,
        ),
      ],
    );
  }
}
