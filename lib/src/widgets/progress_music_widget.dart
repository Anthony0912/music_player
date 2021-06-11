import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:music_player/src/models/audio_player_model.dart';

class ProgressMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontSize: 17,
    );
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);
    final porcentage = audioPlayerModel.porcentage;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('${audioPlayerModel.songTotalDuration}', style: textStyle),
          SizedBox(width: 10),
          Stack(
            children: <Widget>[
              Container(
                width: 300,
                height: 3,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 300 * porcentage,
                  height: 3,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Text('${audioPlayerModel.currentSecond}', style: textStyle),
        ],
      ),
    );
  }
}
