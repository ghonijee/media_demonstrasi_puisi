import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/pages/latihan/latihan.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/BerlatihDeklamasiPuisi.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/langkahMemaknaiPuisi.dart';
import 'package:media_puisi/pages/materi4/deklamasiPuisi/lengkahMemberiIntonasi.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class DefinisiDeklamasiPuisi extends StatefulWidget {
  @override
  _DefinisiDeklamasiPuisi createState() => _DefinisiDeklamasiPuisi();
}

class _DefinisiDeklamasiPuisi extends State<DefinisiDeklamasiPuisi> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  VideoPlayerController _videoPlayerController;
  bool init = false;
  String urlVideo = "assets/video/contoh_deklamasi_2.mp4";
  String urlAudio = "assets/audio/audio_definisi/definisi_deklamasi.mp3";

  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      _assetsAudioPlayer.open(Audio(urlAudio), respectSilentMode: true);
    });
    _videoPlayerController = VideoPlayerController.asset(urlVideo)
      ..initialize().then((_) {
        setState(() {});
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
          "Deklamasi Puisi",
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
            _videoPlayerController.value.initialized
                ? ChewIePlayer(videoPlayerController: _videoPlayerController)
                : AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Loading...")
                      ],
                    )),
                  ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Definisi Deklamasi Puisi",
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
              "Deklamasi puisi merupakan salah satu bentuk pembacaan puisi yang menuntut pembaca (deklamator) untuk menghafalkan puisi yang dibaca sehingga diperoleh penghayatan yang mendalam.",
              style: bodyContent,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Langkah-langkah Deklamasi Puisi",
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
                  _assetsAudioPlayer.dispose();
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
                  _assetsAudioPlayer.dispose();
                  Route url = MaterialPageRoute(
                      builder: (_) => LangkahMemberiTandaIntonasiDeklamasi());
                  Navigator.push(context, url);
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                title: Text("Berlatih Deklamasi Puisi"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  _assetsAudioPlayer.dispose();
                  Route url = MaterialPageRoute(
                      builder: (_) => BerlatihDeklamasiPuisi());
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
