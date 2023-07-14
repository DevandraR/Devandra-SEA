import 'package:flutter/material.dart';

void main() => runApp(balance());

class balance extends StatelessWidget {
  const balance({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: balanceFul(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class balanceFul extends StatefulWidget {
  const balanceFul({super.key});

  @override
  State<balanceFul> createState() =>
      _balanceState();
}

class _balanceState extends State<balanceFul> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.green,
          body: Center(child: Text("This is Balance Page")),
        ),
    );
  }
}