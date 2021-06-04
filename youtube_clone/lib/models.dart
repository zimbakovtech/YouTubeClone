import 'package:flutter/material.dart';
import 'lists.dart';

List suggestionList() {
  List<Widget> suggestions = [];

  for (int i = 0; i < 12; i++) {
    suggestions.add(getSuggestion(suggestionsNames[i]));
    suggestions.add(SizedBox(width: 6.0));
  }

  return suggestions;
}

List videosList() {
  List<Widget> videos = [];

  for (int x = 0; x < 3; x++) {
    for (int i = 0; i < 3; i++) {
      videos.add(getVideo(i));
    }
  }

  return videos;
}

List storyList() {
  List<Widget> stories = [];

  for (int x = 0; x < 5; x++) {
    for (int i = 0; i < 3; i++) {
      stories.add(getStory(i));
    }
  }

  return stories;
}

List recentList() {
  List<Widget> recents = [];

  for (int x = 0; x < 4; x++) {
    for (int i = 0; i < 3; i++) {
      recents.add(getRecent(i));
    }
  }

  return recents;
}

List playlistList() {
  List<Widget> playlists = [];

  for (int x = 0; x < 4; x++) {
    for (int i = 0; i < 3; i++) {
      playlists.add(getPlaylist(i));
    }
  }

  return playlists;
}

Container getSuggestion(String text) {
  return Container(
    height: 20.0,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    decoration: BoxDecoration(
      color: Colors.grey[800],
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}

Container getVideo(int i) {
  return Container(
    height: 309.0,
    child: Column(
      children: [
        Container(
          height: 250,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(videos[i].thumbnail),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20.0,
                      alignment: Alignment.center,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          videos[i].duration,
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(videos[i].profile),
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    videos[i].title,
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  Text(
                    '${videos[i].name} · ${videos[i].views > 999 ? videos[i].views ~/ 1000 : videos[i].views}${videos[i].views > 999 ? 'M views' : 'K views'} · ${videos[i].time > 59 ? videos[i].time ~/ 30 : videos[i].time > 29 ? 1 : videos[i].time > 13 ? videos[i].time ~/ 7 : videos[i].time > 6 ? 1 : videos[i].time} ${videos[i].time > 59 ? 'months ago' : videos[i].time > 29 ? 'month ago' : videos[i].time > 13 ? 'weeks ago' : videos[i].time > 6 ? 'week ago' : videos[i].time > 1 ? 'days ago' : 'day ago'} ',
                    style: TextStyle(color: Colors.grey[700], fontSize: 13.0),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert),
                color: Colors.white,
                iconSize: 20.0,
                onPressed: () {},
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
    height: 40.0,
    width: 180.0,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              icon,
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Container getStory(int i) {
  return Container(
    height: 60.0,
    child: Container(
      width: 90.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(videos[i].profile),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              child: Text(
                videos[i].name,
                style: TextStyle(color: Colors.grey[700]),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Container getRecent(int i) {
  return Container(
    height: 70.0,
    width: 160.0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 70.0,
                width: 160.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(videos[i].thumbnail),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20.0,
                      alignment: Alignment.center,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          videos[i].duration,
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                Container(
                  width: 120.0,
                  child: Text(
                    videos[i].title,
                    style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 18.0,
                ),
              ],
            ),
          ),
          Text(
            videos[i].name,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    ),
  );
}

InkWell getPlaylist(int i) {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            Container(
              height: 37.0,
              width: 37.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(videos[i].profile),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  videos[i].title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.5,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${videos[i].name} · ${videos[i].time} videos',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
