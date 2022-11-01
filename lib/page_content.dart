import 'package:flutter/material.dart';
import 'package:smarty_home/card_button.dart';

class PageContent extends StatelessWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CardButton(
      iconData: Icons.lightbulb,
      backgroundColor: Colors.blue,
      title: 'Lights',
      status: '3 Lights are on',
    );
  }
}
