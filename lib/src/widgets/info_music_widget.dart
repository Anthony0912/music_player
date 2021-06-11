import 'package:flutter/material.dart';

class InfoMusic extends StatelessWidget {
  final String musicName;
  final String artistic;

  const InfoMusic({
    this.musicName = "Dream It Possible",
    this.artistic = "Evolve",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          this.musicName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          this.artistic,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            height: 2,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
