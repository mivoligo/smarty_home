import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    required this.backgroundColor,
    required this.iconData,
    this.color = Colors.black87,
    required this.title,
    this.status,
  }) : super(key: key);

  final Color backgroundColor;
  final Color color;
  final IconData iconData;
  final String title;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      child: Row(
        children: [
          LeftSide(
            iconData: iconData,
          ),
          RightSide(
            color: color,
            title: title,
            status: status,
          ),
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
  const RightSide({
    Key? key,
    required this.title,
    this.status,
    required this.color,
  }) : super(key: key);

  final String title;
  final String? status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(color: color),
        ),
        if (status != null)
          Text(
            status!,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: color),
          ),
      ],
    );
  }
}
