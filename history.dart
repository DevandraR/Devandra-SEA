import 'package:flutter/material.dart';

void main() => runApp(history());

class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: historyFul(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class historyFul extends StatefulWidget {
  const historyFul({super.key});

  @override
  State<historyFul> createState() =>
      _historyState();
}

class _historyState extends State<historyFul> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(child: Text("This is History Page")),
        ),
    );
  }
}