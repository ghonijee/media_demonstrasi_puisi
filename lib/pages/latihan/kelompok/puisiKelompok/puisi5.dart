import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';

class KelompokPuisi5 extends StatefulWidget {
  @override
  _KelompokPuisi5State createState() => _KelompokPuisi5State();
}

class _KelompokPuisi5State extends State<KelompokPuisi5> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/musik_musikalisasi/puisi5.mp3";

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
                  "Kangen",
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
                "Kau tak akan mengerti \nBagaimana kesepianku menghadapi \nkemerdekaan tanpa cinta \nKau tak akan mengerti segala lukaku \nKarena cinta telah sembunyikan \npisaunya."),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(0,
                "Membayangkan wajahmu adalah \nsiksa \nKesepian adalah ketakutan dalam \nkelumpuhan \nEngkau telah menjadi racun bagi \ndarahku \nBila aku dalam kangen dan sepi \nItulah berarti: \n“Aku tungku tanpa api.”"),
            SizedBox(
              height: 20.0,
            ),
            MakePuisi(40, "(W.S Rendra, 1961)"),
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
