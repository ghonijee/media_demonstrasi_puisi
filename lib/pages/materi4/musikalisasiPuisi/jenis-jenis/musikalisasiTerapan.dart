import 'dart:async';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class MusikalisasiTerapan extends StatefulWidget {
  @override
  _MusikalisasiTerapanState createState() => _MusikalisasiTerapanState();
}

class _MusikalisasiTerapanState extends State<MusikalisasiTerapan> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  VideoPlayerController _videoPlayerController;
  bool init = false;

  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      _assetsAudioPlayer.open(
          Audio("assets/audio/audio_definisi/musikalisasi_terapan.mp3"),
          respectSilentMode: true);
    });
    _videoPlayerController = VideoPlayerController.asset(
        "assets/video/contoh_musikalisasi_terapan.mp4")
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
          "Musikalisasi Terapan",
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
                  "Musikalisasi Terapan",
                  style: headingContent,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    _assetsAudioPlayer.open(
                        Audio(
                            "assets/audio/audio_definisi/musikalisasi_terapan.mp3"),
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
              "Yaitu musikalisasi puisi yang ditampilkan dengan menjadikan syair-syair puisi sebagai lirik lagu atau disebut dengan pelaguan syair-syair puisi.",
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
          // FloatingActionButton(
          //     heroTag: "next",
          //     backgroundColor: PrimaryColor,
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (_) => JenisDemonstrasi()));
          //     },
          //     child: Icon(Icons.arrow_forward, color: secondWhite)),
          // SizedBox(
          //   width: 10,
          // ),
        ],
      ),
    );
  }
}
