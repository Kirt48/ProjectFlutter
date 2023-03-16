import 'package:flutter/material.dart';
import 'package:project_aplication/menu.dart';
import 'package:project_aplication/music_list.dart';
import 'package:project_aplication/menuTop.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return MenuTop();
          }, childCount: 1),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Menu();
          }, childCount: 1),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Songs",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.select_all))
                  ],
                ));
          }, childCount: 1),
        ),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage(Music[index]["image"])),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(Music[index]["name"]),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.play_arrow))
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }, childCount: Music.length),
        ),
      ],
    );
  }
}
