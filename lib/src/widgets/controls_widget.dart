import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:music_player/src/models/audio_player_model.dart';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Controls extends StatefulWidget {
  @override
  _ControlsState createState() => _ControlsState();
}

class _ControlsState extends State<Controls>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  bool firstTime = true;
  late AnimationController playAnimation;
  final assetAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    this.playAnimation = new AnimationController(
      vsync: this,
      duration: Duration(microseconds: 500),
    );
    super.initState();
  }

  @override
  void dispose() {
    this.playAnimation.dispose();
    super.dispose();
  }

  void open() {
    final audioPlayerModel =
        Provider.of<AudioPlayerModel>(context, listen: false);
    assetAudioPlayer.open(Audio('assets/audio1.mp3'));
    assetAudioPlayer.currentPosition.listen((duration) {
      audioPlayerModel.current = duration;
    });

    assetAudioPlayer.current.listen((playingAudio) {
      audioPlayerModel.songDuration = playingAudio!.audio.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.repeat,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {},
              ),
              SizedBox(width: 2),
              GestureDetector(
                child: FaIcon(
                  FontAwesomeIcons.stepBackward,
                  color: Colors.white,
                  size: 25,
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: playAnimation,
                  size: 60,
                  color: Colors.white,
                ),
                onTap: () {
                  if (this.isPlaying) {
                    playAnimation.reverse();
                    this.isPlaying = false;
                  } else {
                    playAnimation.forward();
                    this.isPlaying = true;
                  }
                  if (firstTime) {
                    this.open();
                    firstTime = false;
                  } else {
                    assetAudioPlayer.playOrPause();
                  }
                },
              ),
              GestureDetector(
                child: FaIcon(
                  FontAwesomeIcons.stepForward,
                  color: Colors.white,
                  size: 25,
                ),
                onTap: () {},
              ),
              SizedBox(width: 2),
              GestureDetector(
                child: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ControlsCustoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.queue_music_sharp,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 2),
              FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
