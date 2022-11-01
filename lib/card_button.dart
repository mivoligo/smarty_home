import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.backgroundColor,
    required this.iconData,
    this.color = Colors.black87,
  }) : super(key: key);

  final Color backgroundColor;
  final Color color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      child: Row(
        children: [
          LeftSide(
            iconData: iconData,
          ),
          RightSide(),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  const LeftSide({
    Key? key,
    required this.iconData,
    this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, size: 64),
        InkWell(
          onTap: onTap,
          child: const Icon(
            Icons.settings,
            size: 32,
          ),
        ),
      ],
    );
  }
}

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
