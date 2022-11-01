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
      color: backgroundColor,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          LeftSide(
            color: color,
            iconData: iconData,
          ),
          Expanded(
            child: RightSide(
              color: color,
              title: title,
              status: status,
            ),
          ),
        ],
      ),
    );
  }
}

class LeftSide extends StatelessWidget {
  const LeftSide({
    Key? key,
    required this.color,
    required this.iconData,
    this.onTap,
  }) : super(key: key);

  final Color color;
  final IconData iconData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white38,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            Icon(
              iconData,
              size: 64,
              color: color,
            ),
            InkWell(
              onTap: onTap,
              child: Icon(
                Icons.settings,
                size: 32,
                color: color.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: color),
          ),
          if (status != null) ...[
            const SizedBox(height: 16),
            Text(
              status!,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: color),
            ),
          ]
        ],
      ),
    );
  }
}
