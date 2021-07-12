import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  final String title;
  final bool center;
  GlobalAppBar(this.title, this.center);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white, //change your color here
      ),
      centerTitle: center,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
