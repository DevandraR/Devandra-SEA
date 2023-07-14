import 'package:flutter/material.dart';

void main() => runApp(movies());

class movies extends StatelessWidget {
  const movies({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: moviesFul(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class moviesFul extends StatefulWidget {
  const moviesFul({super.key});

  @override
  State<moviesFul> createState() =>
      _moviesState();
}

class _moviesState extends State<moviesFul> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          body: Center(child: Text("This is Movie Page")),
        ),
    );
  }
}