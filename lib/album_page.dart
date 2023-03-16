import 'package:flutter/material.dart';
import 'package:project_aplication/app_bar.dart';
import 'package:project_aplication/menu.dart';
import 'package:project_aplication/albums_list.dart';
import 'package:project_aplication/menuBot.dart';
import 'package:project_aplication/menuTop.dart';

class AlbumPage extends StatelessWidget {
  AlbumPage({super.key});
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
                            "Albums",
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
              return SizedBox(
                height: 200,
                width: 100,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.network(
                              Albums[index]["image"],
                              width: 200,
                              height: 200,
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Albums[index]["name"],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                Albums[index]["artist"],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              );
            }, childCount: Albums.length),
          ),
        ],
      ),
      bottomNavigationBar: MenuBot(),
    );
  }
}
