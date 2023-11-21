import 'package:flutter/material.dart';
import 'package:homenet_ui/src/shared/app_colors.dart';
import 'package:homenet_ui/src/shared/style.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;

//  Display Md Bold

//  Display Md
  const BoxText.txtDisplayMdBd(this.text) : style = txtDisplayMdBd;
  const BoxText.txtDisplayMdMd(this.text) : style = txtDisplayMdMd;
  const BoxText.txtDisplayMdRg(this.text) : style = txtDisplayMdRg;

//  Display Sm
  const BoxText.txtDisplaySmBd(this.text) : style = txtDisplaySmBd;
  const BoxText.txtDisplaySmMd(this.text) : style = txtDisplayMdMd;
  const BoxText.txtDisplaySmRg(this.text) : style = txtDisplayMdRg;

  // Default
  const BoxText.headingOne(this.text) : style = heading1Style;
  const BoxText.headingTwo(this.text) : style = heading2Style;
  const BoxText.headingThree(this.text) : style = heading3Style;
  const BoxText.headline(this.text) : style = headlineStyle;
  const BoxText.subheading(this.text) : style = subheadingStyle;
  const BoxText.caption(this.text) : style = captionStyle;

  BoxText.body(this.text, {Color color = kcMediumGreyColor})
      : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
