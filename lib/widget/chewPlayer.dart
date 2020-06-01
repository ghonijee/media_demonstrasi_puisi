import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewIePlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  const ChewIePlayer({Key key, this.videoPlayerController}) : super(key: key);

  @override
  _ChewIePlayerState createState() => _ChewIePlayerState();
}

class _ChewIePlayerState extends State<ChewIePlayer> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: widget.videoPlayerController.value.aspectRatio,
      autoInitialize: true,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.black),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
