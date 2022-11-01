import 'package:flutter/material.dart';
import 'package:smarty_home/extra_components.dart';

import 'menu.dart';
import 'page_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Column(
        children: const [
          Menu(),
          Expanded(child: PageContent()),
        ],
      ),
      floatingActionButton: const DrawerOpener(),
      endDrawer: const Drawer(
        child: ExtraComponents(),
      ),
    );
  }
}

class DrawerOpener extends StatelessWidget {
  const DrawerOpener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Scaffold.of(context).openEndDrawer(),
      child: const Icon(Icons.add),
    );
  }
}
