import 'package:homenet_ui/homenet_ui.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          ...buttonWidgets,
        ],
      ),
    );
  }

  List<Widget> get buttonWidgets => [
        BoxText.headline('Buttons'),
        Divider(),
        verticalSpaceMedium,
        BoxText.body('Normal'),
        verticalSpaceSmall,
        BoxButton(
          title: 'SIGN IN',
        ),
        verticalSpaceSmall,
        BoxText.body('Disabled'),
        verticalSpaceSmall,
        BoxButton(
          title: 'Login',
          disabled: true,
        ),
        verticalSpaceSmall,
        BoxText.body('Busy'),
        verticalSpaceSmall,
        BoxButton(
          title: 'Login',
          busy: true,
        ),
        verticalSpaceSmall,
        BoxText.body('Outline'),
        verticalSpaceSmall,
        BoxButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: dfPrimary,
          ),
        ),
        verticalSpaceMedium,
      ];
}
