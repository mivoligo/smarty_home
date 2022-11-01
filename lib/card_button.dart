import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.pink,
      child: SizedBox(
        width: 200,
        height: 200,
      ),
    );
  }
}
