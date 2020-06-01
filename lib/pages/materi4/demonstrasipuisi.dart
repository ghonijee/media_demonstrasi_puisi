import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/pages/materi4/jenisDemonstraso.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class DemonstrasiPuisi416 extends StatefulWidget {
  @override
  _DemonstrasiPuisi416State createState() => _DemonstrasiPuisi416State();
}

class _DemonstrasiPuisi416State extends State<DemonstrasiPuisi416> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  VideoPlayerController _videoPlayerController;
  final String urlAudio =
      "assets/audio/audio_definisi/definisi_demonstrasi_puisi.mp3";
  final String urlVideo = "assets/video/contoh_deklamasi_1.mp4";
  bool init = false;

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
          "Definisi Demonstrasi Puisi",
          style: appBarTitle,
        ),
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 60),
        child: Column(
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
                  "Definisi Demonstrasi Puisi",
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
              "Demonstrasi merupakan salah satu metode pembelajaran yang pelaksanaannya dilakukan dengan syarat untuk mengembangkan keterampilan penggunaan alat atau melaksanakan kegiatan tertentu seperti kegiatan yang sesungguhnya (Yamin, 2013). \nDengan demikian dapat disimpulkan bahwa demonstrasi puisi merupakan metode pembelajaran yang dilaksanakan pendidik pada materi teks puisi dengan memperagakan atau mempertunjukkan secara langsung cara membaca puisi sehingga peserta didik dapat memahami materi dengan baik. ",
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
                _assetsAudioPlayer.dispose();
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => JenisDemonstrasi()));
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
