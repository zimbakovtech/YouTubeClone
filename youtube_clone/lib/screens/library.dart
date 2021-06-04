import 'package:flutter/material.dart';
import 'package:youtube_clone/models.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Text(
              'Recent',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: recentList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Divider(
              height: 1.0,
              color: Colors.grey[800],
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'History',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Your videos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.movie,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        'Your movies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Watch Later',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5,
                            ),
                          ),
                          Text('4 unwatched videos',
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 13.0)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              height: 1.0,
              color: Colors.grey[800],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  'Playlists',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.5,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Recently added',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 25.0,
                      ),
                      SizedBox(width: 15.0),
                      Text(
                        'New playlist',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Liked videos ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.5,
                            ),
                          ),
                          Text(
                            '131 videos',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: playlistList(),
          ),
        ],
      ),
    );
  }
}
