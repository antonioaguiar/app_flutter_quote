import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:quotes/app/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget({Key key, this.backgroundColor, this.quote, this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, width: 350, height: 660);
    return Container(
      width: ScreenUtil.screenWidthDp,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(48),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/quote.png",
            color: Colors.white.withOpacity(0.4),
            width: ScreenUtil().setWidth(70),
            height: ScreenUtil().setHeight(70),
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headline,
              ),
            ),
          ),
          Center(
            child: Text(
              author,
              style: ThemeText.subHead,
            ),
          ),
        ],
      ),
    );
  }
}
