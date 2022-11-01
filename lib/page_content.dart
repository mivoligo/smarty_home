import 'package:flutter/material.dart';
import 'package:smarty_home/card_button.dart';

class PageContent extends StatelessWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  flex: 3,
                  child: CardButton(
                    backgroundColor: Colors.blue,
                    iconData: Icons.lightbulb,
                    title: 'Light',
                    status: '3 light are on',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CardButton(
                    backgroundColor: Colors.green,
                    iconData: Icons.key,
                    title: 'Locks',
                    status: 'Unlocked',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CardButton(
                    backgroundColor: Colors.pink,
                    iconData: Icons.music_note,
                    title: 'Music',
                    status: 'Not playing',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CardButton(
                    backgroundColor: Colors.orange,
                    iconData: Icons.thermostat,
                    title: 'Temperature',
                    status: '21 °C',
                  ),
                ),
                Expanded(
                  child: CardButton(
                    backgroundColor: Colors.purple,
                    iconData: Icons.videocam,
                    title: 'Cameras',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
