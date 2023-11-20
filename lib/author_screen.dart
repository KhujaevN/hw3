import 'package:flutter/material.dart';

class AuthorScreen extends StatelessWidget {
  final String author;

  AuthorScreen({required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Author Details'),
      ),
      body: Center(
        child: Text('Author: $author'),
      ),
    );
  }
}