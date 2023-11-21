import 'package:homenet_ui/homenet_ui.dart';
import 'package:flutter/material.dart';

class BaseTypography extends StatelessWidget {
  const BaseTypography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          verticalSpaceSmall,
          ...textWidgets,
        ],
      ),
    );
  }

  List<Widget> get textWidgets => [
        BoxText.headline('Text Styles'),
        Divider(),
        verticalSpaceMedium,
        BoxText.headingOne('Heading One'),
        verticalSpaceMedium,
        BoxText.headingTwo('Heading Two'),
        verticalSpaceMedium,
        BoxText.headingThree('Heading Three'),
        verticalSpaceMedium,
        BoxText.headline('Headline'),
        verticalSpaceMedium,
        BoxText.subheading('This will be a sub heading to the headling'),
        verticalSpaceMedium,
        BoxText.body('Body Text that will be used for the general body'),
        verticalSpaceMedium,
        BoxText.caption('This will be the caption usually for smaller details'),
        verticalSpaceMedium,
      ];
}
