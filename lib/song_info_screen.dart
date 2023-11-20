import 'package:flutter/material.dart';
import 'author_screen.dart';
import 'lyrics_screen.dart';
import 'poster_screen.dart';
import 'song.dart';

class SongInfoScreen extends StatelessWidget {
  final Song song;

  SongInfoScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthorScreen(author: song.author)),
                );
              },
              child: Text('Author'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LyricsScreen(lyrics: song.lyrics)),
                );
              },
              child: Text('Lyrics'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PosterScreen(poster: song.poster)),
                );
              },
              child: Text('Poster'),
            ),
          ],
        ),
      ),
    );
  }
}
