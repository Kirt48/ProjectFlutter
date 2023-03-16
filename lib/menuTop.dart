import 'package:flutter/material.dart';

class MenuTop extends StatelessWidget {
  MenuTop({super.key});

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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "All songs",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.folder,
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
