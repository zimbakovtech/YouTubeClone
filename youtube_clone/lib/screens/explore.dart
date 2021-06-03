import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getExplore('Trending', 'assets/trending.jpg',
                        Icon(Icons.trending_down)),
                    getExplore(
                        'Music', 'assets/music.png', Icon(Icons.music_note)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getExplore(
                        'Gaming', 'assets/gaming.jpg', Icon(Icons.gamepad)),
                    getExplore(
                        'Movies', 'assets/movies.jpg', Icon(Icons.movie)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    getExplore(
                        'Sports', 'assets/sports.jpg', Icon(Icons.badge)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container getExplore(String name, String image, Icon icon) {
    return Container(
      height: 30.0,
      width: 80.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
