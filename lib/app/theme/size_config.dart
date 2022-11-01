import 'package:flutter/material.dart';

bool _lock = false;

class SizeConfig {
  static double? _screenWidth;
  static double? _screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static double? _blockWidth = 0;
  static double? _blockHeight = 0;

  static double? textMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;

  void init(BoxConstraints constraints) {
    // To prevent init again when screen is resizing
    // this happens during animation of soft closing app
    // on iOS
    if (_lock) return;
    _screenWidth = constraints.maxWidth;
    _screenHeight = constraints.maxHeight;

    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
    _lock = true;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig._screenHeight!;
  // 812 is the layout height that designer use
  return (inputHeight / screenHeight) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig._screenWidth!;
  // 375 is the layout width that designer use
  return (inputWidth.toDouble() / screenWidth) * screenWidth.toDouble();
}

// For add free space vertically
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key? key,
    this.of = 25,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(of),
    );
  }
}

class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key? key,
    this.of = 25,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenHeight(of),
    );
  }
}
