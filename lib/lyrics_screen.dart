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
      body: Center(
        child: Text('Lyrics: $lyrics'),
      ),
    );
  }
}