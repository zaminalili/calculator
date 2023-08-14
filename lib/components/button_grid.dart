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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Text(Button.mainButtonTexts[index]),
          );
        });
  }
}
