import 'package:flutter/material.dart';
import 'package:test/AppBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Future Builder'),
          ),
          body: const AppBody()),
    );
  }
}
