import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class Ekspresi extends StatefulWidget {
  @override
  _EkspresiState createState() => _EkspresiState();
}

class _EkspresiState extends State<Ekspresi> {
  VideoPlayerController _videoPlayerController;
  bool init = false;
  String urlVideo = "assets/video/ekspresi.mp4";

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
          "Ekspresi",
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
              "Ekspresi",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Ekspresi dilakukan untuk menambah penghayatan puisi.",
              style: bodyContent,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Langkah Olah Ekspresi: ",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListText(
                "Membayangkan peristiwa dalam puisi terjadi di depan mata atau pada diri sendiri"),
            MakeListText(
                "Membebaskan imajinasi yang terbangun ketika menghayati puisi"),
            MakeListText(
                "Membiarkan perasaan larut yang diekspresikan melalui larik-larik puisi yang diingat"),
            MakeListText(
                "Mengendalikan perasaan dan ekspresi agar tidak berlebihan"),
            MakeListText(
                "Menarik dan mengembuskan napas secara perlahan yang dilakukan secukupnya"),
            MakeListText("Menggerakkan jari-jari tangan dengan perlahan"),
            MakeListText("Menggerakkan jari jemari kaki"),
            MakeListText(
                "Mengekspresikan semua kepenatan dalam jiwa dengan menarik dan mengembuskan napas disertai teriakan “Hah!”"),
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
          leading: Transform.translate(
            offset: Offset(-10, 10),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black87),
            ),
          ),
          title: Transform.translate(
            offset: Offset(-25, 0),
            child: Text(
              text,
              style: bodyContent,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
