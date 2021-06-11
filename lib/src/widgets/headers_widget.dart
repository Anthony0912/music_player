import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HearderPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          margin: EdgeInsets.only(top: 9),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.chevronDown,
                color: Colors.grey,
                size: 20,
              ),
              Spacer(),
              FaIcon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
