import 'package:flutter/material.dart';

class MenuTopSong extends StatelessWidget {
  MenuTopSong({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 60,
        child: Container(
          width: 365,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 35,
                    )),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 35,
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
