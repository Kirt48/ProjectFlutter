import 'package:flutter/material.dart';

class AppBarProp extends StatelessWidget {
  Widget title;
  AppBarProp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: Colors.black,
    );
  }
}
