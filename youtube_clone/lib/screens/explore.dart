import 'package:flutter/material.dart';
import 'package:youtube_clone/models.dart';

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
          Divider(
            height: 1.0,
            color: Colors.grey[800],
          ),
          Container(
            color: Colors.black26,
            height: 170.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getExplore(
                        'Trending',
                        'assets/trending.jpg',
                        Icon(Icons.trending_up,
                            color: Colors.white, size: 32.0)),
                    getExplore(
                        'Music',
                        'assets/music.png',
                        Icon(Icons.music_note,
                            color: Colors.white, size: 32.0)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getExplore('Gaming', 'assets/gaming.jpg',
                        Icon(Icons.gamepad, color: Colors.white, size: 32.0)),
                    getExplore('Movies', 'assets/movies.jpg',
                        Icon(Icons.movie, color: Colors.white, size: 32.0)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getExplore('Sports', 'assets/sports.jpg',
                        Icon(Icons.badge, color: Colors.white, size: 32.0)),
                    getExplore('', '', Icon(null)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Divider(height: 1.0, color: Colors.grey[800])),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Text(
              'Trending Videos',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          Column(
            children: videosList(),
          ),
        ],
      ),
    );
  }
}
