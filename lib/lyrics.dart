import 'package:flutter/material.dart';

class LyricsScreen extends StatelessWidget {
  final String lyrics;

  LyricsScreen({required this.lyrics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lyrics Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            lyrics,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
