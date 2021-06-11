import 'package:flutter/material.dart';

class ImageMusic extends StatelessWidget {
  final String assetImage;

  const ImageMusic({this.assetImage = "assets/imagine_dragons.jpg"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 412,
      child: Image(
        image: AssetImage(assetImage),
      ),
    );
  }
}
