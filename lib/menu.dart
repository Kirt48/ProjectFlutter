import 'package:flutter/material.dart';
import 'package:project_aplication/album_page.dart';
import 'package:project_aplication/artist_page.dart';
import 'package:project_aplication/home_page.dart';
import 'package:project_aplication/music_page.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 60,
        child: Container(
          width: 365,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: RichText(
                      text: const TextSpan(text: "", children: [
                    TextSpan(
                      text: 'Songs',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy,
                      ),
                    ),
                  ]))),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ArtistPage()));
                  },
                  child: RichText(
                      text: const TextSpan(text: "", children: [
                    TextSpan(
                      text: 'Artists',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy,
                      ),
                    ),
                  ]))),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AlbumPage()));
                  },
                  child: RichText(
                      text: const TextSpan(text: "", children: [
                    TextSpan(
                      text: 'Albums',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.red,
                        decorationStyle: TextDecorationStyle.wavy,
                      ),
                    ),
                  ]))),
            ],
          ),
        ));
  }
}
