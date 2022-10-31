import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appThemeData = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
  textTheme: lightTextTheme,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
  ),
);

final TextTheme lightTextTheme = TextTheme(
  headline1: _headline1,
  headline2: _headline2,
  headline3: _headline3,
  headline4: _headline4,
  headline5: _headline5,
  headline6: _headline6,
  subtitle1: _subtitle1,
  subtitle2: _subtitle2,
  bodyText1: _bodyText1,
  bodyText2: _bodyText2,
);

final TextStyle _headline1 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _headline2 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _headline3 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _headline4 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _headline5 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _headline6 = GoogleFonts.robotoMono(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _subtitle1 = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _subtitle2 = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _bodyText1 = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _bodyText2 = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);
final TextStyle _bodySmall = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);

final TextStyle _bodyLarge = GoogleFonts.inter(
  color: Colors.black,
  // fontSize: 2 * SizeConfig.textMultiplier,
  // height: 1.5,
);


  //  final TextStyle _headline1dark = _headline1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _headline2dark = _headline2.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _headline3dark = _headline3.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _headline4dark = _headline4.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _headline5dark = _headline5.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _headline6dark = _headline6.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _subtitle1dark = _subtitle1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _subtitle2dark = _subtitle1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _bodyText1dark = _bodyText1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _bodyText2dark = _bodyText1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );

  //  final TextStyle _buttonDark = _bodyText1.copyWith(
  //   color: ColorSets.darkPrimary,
  // );
