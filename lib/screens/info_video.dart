import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final VideoPlayerController videoPlayerController;

  const VideoPlayerScreen({Key? key, required this.videoPlayerController})
      : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _initializeChewieController();
  }

  void _initializeChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      autoPlay: true,
      looping: true,
      allowedScreenSleep: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: widget.videoPlayerController.value.aspectRatio,
          child: Chewie(controller: _chewieController),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (widget.videoPlayerController.value.isPlaying) {
            widget.videoPlayerController.pause();
          } else {
            widget.videoPlayerController.play();
          }
          setState(() {});
        },
        child: Icon(
          widget.videoPlayerController.value.isPlaying
              ? Icons.pause
              : Icons.play_arrow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            widget.videoPlayerController.pause();
            widget.videoPlayerController.dispose();
            _chewieController.dispose();
            Navigator.pop(context); // Exit the screen
          },
          child: Text('Exit'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.pause(); // Pause the video before disposing
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
