import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class LangkahMusikalisasiCampuran extends StatefulWidget {
  @override
  _LangkahMusikalisasiCampuranState createState() =>
      _LangkahMusikalisasiCampuranState();
}

class _LangkahMusikalisasiCampuranState
    extends State<LangkahMusikalisasiCampuran> {
  VideoPlayerController _videoPlayerController;
  bool init = false;
  String urlVideo = "assets/video/langkah_musikalisasi_campuran.mp4";

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(urlVideo)
      ..initialize().then((_) {
        setState(() {});
      });
    super.initState();
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
          "Menyampaikan Musikalisasi Campuran",
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
            Text(
              "Langkah-langkah: ",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListText("Menentukan bait puisi yang dinarasikan"),
            MakeListText(
                "Menentukan bait puisi yang dilagukan sebagai lirik lagu"),
            MakeListText(
                "Membaca puisi yang dinarasikan sesuai jeda yang diberikan"),
            MakeListText(
                "Mulai memasukkan iringan musik dalam pembacaan puisi"),
            MakeListText(
                "Menyelaraskan nada iringan musik dengan bait puisi yang dilagukan"),
            MakeListText(
                "Berlatih secara teratur untuk memperoleh perpaduan narasi dan lagu puisi yang pas."),
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

class MakeListText extends StatelessWidget {
  final String text;

  const MakeListText(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.stop,
            size: 20,
          ),
          title: Text(
            text,
            style: bodyContent,
          ),
        ),
        Divider(),
      ],
    );
  }
}
