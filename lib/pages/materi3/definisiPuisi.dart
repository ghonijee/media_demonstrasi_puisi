import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi3/langkahAnalisis.dart';
import 'package:media_puisi/styles/constanta.dart';

class DefinisiPuisi316 extends StatefulWidget {
  @override
  _DefinisiPuisi316State createState() => _DefinisiPuisi316State();
}

class _DefinisiPuisi316State extends State<DefinisiPuisi316> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final String urlAudio = "assets/audio/audio_definisi/definisi_puisi.mp3";

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
          "Definisi Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Definisi Puisi",
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
              height: 5,
            ),
            Text(
              "Puisi merupakan salah satu genre karya sastra yang mengandung ide atau pokok persoalan tertentu yang ingin disampaikan penyairnya (Emzir dan Rohman, 2016). Pendapat lain menyatakan bahwa  puisi merupakan untaian kalimat bersajak (Hartono dalam Warsiman, 2016). Berdasarkan pendapat tersebut, dapat disimpulkan bahwa puisi merupakan salah satu jenis karya sastra yang ditulis dengan memperhatikan pemilihan diksi dan mengandung pesan atau makna yang ingin disampaikan penulis.",
              style: bodyContent,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Definisi Suasana",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Perasaan pembaca setelah membaca puisi.",
              style: bodyContent,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Definisi Tema",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Ide dasar yang menjiwai sebuah puisi.",
              style: bodyContent,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Definisi Makna",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Pesan penyair yang diungkapkan dalam keseluruhan isi puisi. ",
              style: bodyContent,
            ),
          ],
        ),
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
          FloatingActionButton(
              heroTag: "next",
              backgroundColor: PrimaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LangkahAnalisis316()));
              },
              child: Icon(Icons.arrow_forward, color: secondWhite)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
