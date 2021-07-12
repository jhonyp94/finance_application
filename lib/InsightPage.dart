import 'package:flutter/material.dart';

class InsightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Insight",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Coming Soon"
        ),
      ),
    );
  }
}
