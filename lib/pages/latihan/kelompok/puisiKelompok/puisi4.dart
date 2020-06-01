import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class KelompokPuisi4 extends StatefulWidget {
  @override
  _KelompokPuisi4State createState() => _KelompokPuisi4State();
}

class _KelompokPuisi4State extends State<KelompokPuisi4> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/musik_musikalisasi/puisi4.mp3";

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
                  "Diponegoro",
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
            MakePuisi(0, "Di masa pembangunan ini \nTuan hidup kembali"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0, "Dan bara kagum menjadi api"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Di depan sekali Tuan menanti \nTak gentar, Lawan banyaknya seratus \nkali \nPedang di kanan, keris di kiri \nBerselempang semangat yang tak bisa mati"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "MAJU \nIni barisan tak bergenderang-berpalu \nKepercayaan tanda menyerbu \nSekali berarti \nSudah itu mati"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "MAJU \nBagimu negeri \nMenyediakan api \nPunah di atas menghamba \nBinasa di atas ditinda"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Sungguh pun dalam ajal baru tercapai \nJika hidup harus merasai"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0, "Maju \nSerbu \nSerang \nTerjang"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(40, "(Chairil Anwar, 1943)"),
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
