import 'package:dating_app/screens/buttonclass.dart';
import 'package:dating_app/screens/edit_profile/edit_profile_screen.dart';
import 'package:dating_app/screens/edit_profile/profile_home.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UpgradeScreen extends StatefulWidget {
  const UpgradeScreen({Key? key}) : super(key: key);

  @override
  _UpgradeScreenState createState() => _UpgradeScreenState();
}

class _UpgradeScreenState extends State<UpgradeScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/videoplaybackzahid.mp4");

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.8, top: 30.0),
                child: const Icon(
                  Icons.cancel,
                  size: 40,
                  color: Colors.teal,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.teal, width: 10.0),
                          right: BorderSide(color: Colors.teal, width: 10.0),
                          top:
                              BorderSide(color: Colors.tealAccent, width: 10.0),
                          bottom:
                              BorderSide(color: Colors.tealAccent, width: 10.0),
                        ),
                      ),
                      child: FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return AspectRatio(
                              aspectRatio: _controller.value.aspectRatio / 2,
                              // aspectRatio: 2,
                              child: VideoPlayer(_controller),
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white60,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        icon: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Earn 20 coins by watching ads to get premium \nFeatures for free',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const FittedBox(
                    child: Text(
                      'OR',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ButtonApplyClass(
                    name: 'UPGRADE PAYMENT',
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => PersonProfileHome()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
