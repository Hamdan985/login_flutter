import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {
  const Colors();
//  #16222a, #3a6073
  static const Color loginGradientStart = const Color.fromRGBO(22, 34, 42, 1);
  static const Color loginGradientEnd = const Color.fromRGBO(58, 96, 115, 1);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
