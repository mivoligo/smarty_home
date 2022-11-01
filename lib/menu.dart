import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuItem(
          name: 'Favourites',
          onTap: () {},
        ),
        MenuItem(
          name: 'Master bedroom',
          onTap: () {},
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.name,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final String name;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Text(
          name,
          style: isSelected
              ? const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
              : const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}