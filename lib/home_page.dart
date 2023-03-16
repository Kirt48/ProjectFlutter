import 'package:flutter/material.dart';
import 'package:project_aplication/app_bar.dart';
import 'package:project_aplication/menuBot.dart';
import 'package:project_aplication/music_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(63),
          child: AppBarProp(
              title: const Text(
            "KRT",
            style: TextStyle(color: Colors.white),
          ))),
      drawer: Drawer(),
      body: MusicPage(),
      bottomNavigationBar:
          PreferredSize(preferredSize: Size.fromHeight(60), child: MenuBot()),
    );
  }
}
