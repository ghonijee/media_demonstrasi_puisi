import 'package:flutter/material.dart';
import 'package:media_puisi/styles/constanta.dart';
import 'package:media_puisi/widget/chewPlayer.dart';
import 'package:video_player/video_player.dart';

class LangkahPemanasan extends StatefulWidget {
  @override
  _LangkahPemanasanState createState() => _LangkahPemanasanState();
}

class _LangkahPemanasanState extends State<LangkahPemanasan> {
  VideoPlayerController _videoPlayerController;
  bool init = false;
  String urlVideo = "assets/video/pemanasan.mp4";

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
          "Pemanasan",
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
              "Pemanasan",
              style: headingContent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Pemanasan dilakukan untuk menyegarkan kondisi tubuh.",
              style: bodyContent,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Langkah Pemanasan: ",
              style: headingContent,
            ),
            SizedBox(
              height: 10,
            ),
            MakeListText("Gerakan kepala"),
            MakeListText("Senam mimik"),
            MakeListText("Gerakan tangan"),
            MakeListText("Gerakan kaki"),
            MakeListText("Berlari kecil"),
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
