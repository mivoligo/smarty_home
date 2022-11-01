import 'package:flutter/material.dart';

class ExtraComponents extends StatelessWidget {
  const ExtraComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: components.length,
      itemBuilder: (context, index) {
        final component = components[index];
        return Component(
          name: component,
          color: Colors.primaries[index % Colors.primaries.length],
        );
      },
    );
  }
}

class Component extends StatelessWidget {
  const Component({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 64),
      margin: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

const List<String> components = [
  'Weather',
  'World Clock',
  'Timer',
  'Stopwatch',
  'Egg Timer',
  'Coffee Maker',
  'Wallpaper',
];
