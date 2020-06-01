import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/langkahMemaknaiPuisi.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/lengkahMemberiIntonasi.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/jenis-jenis/musikalisasiAwal.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/jenis-jenis/musikalisasiCampuran.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/jenis-jenis/musikalisasiTerapan.dart';
import 'package:media_puisi/pages/materi4/musikalisasiPuisi/langkahmenyampaikanPuisi.dart';
import 'package:media_puisi/styles/constanta.dart';

class DefinisiMusikalisasiPuisi extends StatefulWidget {
  @override
  _DefinisiMusikalisasiPuisiState createState() =>
      _DefinisiMusikalisasiPuisiState();
}

class _DefinisiMusikalisasiPuisiState extends State<DefinisiMusikalisasiPuisi> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  bool init = false;
  final String urlAudio = "assets/audio/audio_definisi/musikalisasi_puisi.mp3";

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
          "Musikalisasi Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Definisi Musikalisasi Puisi",
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
              "Musikalisasi puisi merupakan salah satu bentuk pembacaan puisi dengan memadukan musik dan puisi untuk menciptakan penghayatan yang mendalam.",
              style: bodyContent,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Jenis-jenis Musikalisasi Puisi",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Musikalisasi Awal"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _assetsAudioPlayer.dispose();
                  Route url =
                      MaterialPageRoute(builder: (_) => MusikalisasiAwal());
                  Navigator.push(context, url);
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Musikalisasi Terapan"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _assetsAudioPlayer.dispose();
                  Route url =
                      MaterialPageRoute(builder: (_) => MusikalisasiTerapan());
                  Navigator.push(context, url);
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Musikalisasi Campuran"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _assetsAudioPlayer.dispose();
                  Route url =
                      MaterialPageRoute(builder: (_) => MusikalisasiCampuran());
                  Navigator.push(context, url);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Langkah Musikalisasi Puisi",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Memaknai Puisi"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Route url = MaterialPageRoute(
                      builder: (_) => LangkahMemaknaiPuisiDeklamasi());
                  Navigator.push(context, url);
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Memberi Tanda Intonasi"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Route url = MaterialPageRoute(
                      builder: (_) => LangkahMemberiTandaIntonasiDeklamasi());
                  Navigator.push(context, url);
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Menyampaikan Puisi dengan Musik"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Route url = MaterialPageRoute(
                      builder: (_) => LangkahMenyampaikanPuisi());
                  Navigator.push(context, url);
                },
              ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Latihan())); //pergi ke soal
              },
              child: Icon(Icons.library_books, color: secondWhite)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
