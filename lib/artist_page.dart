import 'package:flutter/material.dart';
import 'package:project_aplication/app_bar.dart';
import 'package:project_aplication/menu.dart';
import 'package:project_aplication/artist_list.dart';
import 'package:project_aplication/menuBot.dart';
import 'package:project_aplication/menuTop.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({super.key});

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
                            "Artists",
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
                            backgroundImage:
                                AssetImage(Artists[index]["image"]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(Artists[index]["name"]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }, childCount: Artists.length),
          ),
        ],
      ),
      bottomNavigationBar: MenuBot(),
    );
  }
}
