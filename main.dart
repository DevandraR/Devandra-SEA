import 'package:flutter/material.dart';
import 'movies.dart';
import 'balance.dart';
import 'history.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppFul(),
      title: 'MovieBee',
    );
  }
}

class MyAppFul extends StatefulWidget {
  const MyAppFul({super.key});

  @override
  State<MyAppFul> createState() =>
      _MyAppState();
}

class _MyAppState extends State<MyAppFul> {
  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 1;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    
    final List<Container> _pages = [
      Container(
        child: movies(),
      ),
      Container(
        child: balance(),
      ),
      Container(
        child: history(),
      )
    ];


    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow, fontFamily: 'Poppins'),
      home: Scaffold(
        appBar: AppBar( // app bar yang berwarna bagian atas
          title: Center(
            child: Text('MovieBee')
          )
        ), 
        body: Center( // body  adalah bagian yang mengisi page utamanya
          child: Container(
            child: _pages[_selectedIndex],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: 'Movie List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Balance',
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[600],
        onTap: _onItemTapped,
        ),

      ),
    );
  }
}