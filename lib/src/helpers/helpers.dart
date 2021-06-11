import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void enableStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0x00000000),
    ),
  );
}
