import 'package:flutter/material.dart';

import 'menu.dart';
import 'page_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Menu(),
        PageContent(),
      ],
    );
  }
}
