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
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Button.mainButtonTexts.length,
        gridDelegate: _builtGridDelegate(),
        itemBuilder: _builtItems);
  }

  Widget? _builtItems(context, index) {
    String text = Button.mainButtonTexts[index];
    Color textColor = ['AC', 'C', '%', '÷', '×', '-', '+', '='].contains(text)
        ? Theme.of(context).colorScheme.secondary
        : Theme.of(context).colorScheme.primary;

    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.primaryTextStyle(textColor),
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _builtGridDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
    );
  }
}
