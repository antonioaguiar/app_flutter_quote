import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static final headline = GoogleFonts.dosis(
    textStyle: _headline.copyWith(
      fontSize: ScreenUtil().setSp(32),
    ),
  );

  static final subHead = GoogleFonts.dosis(
    textStyle: _subHead.copyWith(
      fontSize: ScreenUtil().setSp(20),
    ),
  );

  static const _headline = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontStyle: FontStyle.italic,
  );

  static const _subHead = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
}
