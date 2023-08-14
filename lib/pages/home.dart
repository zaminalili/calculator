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
      body: Column(
        children: [
          _builtInput(context),
          _builtButtons(context),
        ],
      ),
    );
  }

  Container _builtInput(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: const Text(
        '0',
        textAlign: TextAlign.end,
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
