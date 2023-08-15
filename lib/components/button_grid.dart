import 'package:calculator/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../models/button.dart';

class ButtonGrid extends StatefulWidget {
  const ButtonGrid({
    super.key,
  });

  @override
  State<ButtonGrid> createState() => _ButtonGridState();
}

class _ButtonGridState extends State<ButtonGrid> {
  List<String> buttons = Button.mainButtonTexts;
  int crossAxisCount = 4;

  void _onTap(String tap) {
    if (tap == '') {
      setState(() {
        buttons = buttons == Button.mainButtonTexts
            ? Button.allButtonTexts
            : Button.mainButtonTexts;
        crossAxisCount = crossAxisCount == 4 ? 5 : 4;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: buttons.length,
        gridDelegate: _builtGridDelegate(),
        itemBuilder: _builtItems);
  }

  Widget? _builtItems(context, index) {
    String text = buttons[index];
    Color textColor = Button.operators.contains(text)
        ? Theme.of(context).colorScheme.secondary
        : Theme.of(context).colorScheme.primary;

    return InkWell(
      onTap: () {
        _onTap(text);
      },
      child: Container(
        alignment: Alignment.center,
        child: text == ''
            ? Icon(
                Icons.repeat,
                color: textColor,
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.primaryTextStyle(textColor),
              ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _builtGridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
    );
  }
}
