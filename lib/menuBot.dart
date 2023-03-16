import 'package:flutter/material.dart';
import 'package:project_aplication/music_list.dart';
import 'package:project_aplication/song_page.dart';

class MenuBot extends StatelessWidget {
  MenuBot({super.key});

  var song = Music[1];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 60,
        child: Container(
          width: 365,
          height: 70,
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(song["image"]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Song name"),
                    )
                  ],
                ),
              ),
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
                        Icons.skip_previous_outlined,
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
                        Icons.play_circle_outline_outlined,
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
                        Icons.skip_next_outlined,
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
                        Icons.repeat_one_outlined,
                        color: Colors.red,
                        size: 35,
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
