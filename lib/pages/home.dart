import 'package:calculator/themes/app_edgeinsets.dart';
import 'package:calculator/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../components/button_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: _builtAppBar(context),
      body: Padding(
        padding: AppEdgeInsets.horizontal,
        child: Column(
          children: [
            _builtInput(context),
            _builtButtons(context),
          ],
        ),
      ),
    );
  }

  Container _builtInput(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Text(
        '0',
        textAlign: TextAlign.end,
        style: AppTextStyles.secondaryTextStyle(
            Theme.of(context).colorScheme.primary),
      ),
    );
  }

  SizedBox _builtButtons(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height - 280,
        child: const ButtonGrid());
  }

  AppBar _builtAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text('Calculator'),
      centerTitle: true,
    );
  }
}
