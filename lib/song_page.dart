import 'package:flutter/material.dart';
import 'package:project_aplication/MenuTopSong.dart';
import 'package:project_aplication/albums_list.dart';
import 'package:project_aplication/app_bar.dart';
import 'package:project_aplication/artist_list.dart';
import 'package:project_aplication/menu.dart';
import 'package:project_aplication/menuBot.dart';
import 'package:project_aplication/menuTop.dart';
import 'package:project_aplication/music_list.dart';

class SongPage extends StatelessWidget {
  SongPage({super.key});
  var song = Music[1];
  var artist = Artists[1];
  var album = Albums[1];
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return MenuTopSong();
            }, childCount: 1),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 15),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(song["image"]),
                              radius: 130,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              Music[1]["name"],
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Divider(),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.person,
                                size: 40,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  artist["name"],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 5, 0, 5),
                                  child: Text(
                                    album["name"],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Divider(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.download,
                                    color: Colors.red,
                                    size: 35,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.heart_broken,
                                    color: Colors.red,
                                    size: 35,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.red,
                                    size: 35,
                                  )),
                            ],
                          ),
                        ),
                        Divider(
                          height: 60,
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 140,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SongPage()));
                      },
                      icon: const Icon(
                        Icons.density_medium_sharp,
                        color: Colors.red,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SongPage()));
                      },
                      icon: const Icon(
                        Icons.skip_previous_outlined,
                        color: Colors.red,
                        size: 55,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SongPage()));
                      },
                      icon: const Icon(
                        Icons.play_circle_outline_outlined,
                        color: Colors.red,
                        size: 75,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SongPage()));
                      },
                      icon: const Icon(
                        Icons.skip_next_outlined,
                        color: Colors.red,
                        size: 55,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SongPage()));
                      },
                      icon: const Icon(
                        Icons.repeat,
                        color: Colors.red,
                        size: 35,
                      )),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
