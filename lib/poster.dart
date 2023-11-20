import 'package:flutter/material.dart';

class PosterScreen extends StatelessWidget {
  final String poster;

  PosterScreen({required this.poster});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poster Details'),
      ),
      body: Center(
        child: Image.network(poster), // Assuming 'poster' is a URL
      ),
    );
  }
}
