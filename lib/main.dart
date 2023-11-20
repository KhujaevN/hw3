import 'package:flutter/material.dart';
import 'song.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Song App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SongListScreen(),
    );
  }
}

class SongListScreen extends StatelessWidget {
  final List<Song> songs = [
    Song(
        title: 'Song 1',
        author: 'Author 1',
        lyrics: 'Lyrics 1',
        poster: 'Poster 1'),
    Song(
        title: 'Song 2',
        author: 'Author 2',
        lyrics: 'Lyrics 2',
        poster: 'Poster 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song List'),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(songs[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SongInfoScreen(song: songs[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class SongInfoScreen extends StatelessWidget {
  final Song song;

  SongInfoScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Author'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Lyrics'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Poster'),
          ),
        ],
      ),
    );
  }
}
