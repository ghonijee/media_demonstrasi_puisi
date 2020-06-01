import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class KelompokPuisi2 extends StatefulWidget {
  @override
  _KelompokPuisi2State createState() => _KelompokPuisi2State();
}

class _KelompokPuisi2State extends State<KelompokPuisi2> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/musik_musikalisasi/puisi2.mp3";

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
                  "Keranda",
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
                "Ranjang meminta kembali tubuh yang pernah dilahirkan dan diasuhnya dengan sepenuh cinta."),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "“Semoga anakku yang pemberani, yang jauh merantau ke negeri-negeri igauan, menemukan jalan untuk pulang;  pun jika aku sudah lapuk dan karatan.”"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Tapi tubuh sudah begitu jauh mengembara. Kalau pun sesekali datang, ia datang  hanya untuk menabung luka. Dan ketika akhirnya pulang,  ia sudah mayat tinggal rangka."),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Bagai si buta yang renta dan terbata-bata ia mengetuk-ngetuk pintu: “Ibu!”"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Ranjang yang demikian tegar lagi penyabar memeluknya erat: “Aku rela jadi keranda untukmu.”"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(40, " (Joko Pinurbo, 1996)"),
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
