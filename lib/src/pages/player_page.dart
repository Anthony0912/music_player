import 'package:flutter/material.dart';

import 'package:music_player/src/widgets/custom_widget.dart';
import 'package:music_player/src/helpers/helpers.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    enableStatusBar();
    return Scaffold(
      body: Container(
        color: Color(0xff141d26),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  ImageMusic(),
                  HearderPlayer(),
                  Positioned(
                    top: 460,
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Column(
                      children: <Widget>[
                        InfoMusic(),
                        SizedBox(height: 70),
                        ControlsCustoms(),
                        SizedBox(height: 30),
                        ProgressMusic(),
                        SizedBox(height: 30),
                        Controls(),
                        SizedBox(height: 30),
                      ],
                    ),
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
