import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  final String text;
  const Tabbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 80, left: 25),
        child: TabBar(
          controller: _controller,
          labelStyle: TextStyle(
              fontFamily: "Comfortaa",
              fontSize: 24,
              fontWeight: FontWeight.bold),
          tabs: [
            Text("Popular"),
            Text("NowPlaying"),
            Text("Upcoming"),
            Text("Top Rate"),
          ],
          indicatorColor: Colors.black,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
          labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black.withOpacity(0.5),
          isScrollable: true,
        ));
  }
}
