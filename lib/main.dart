import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'passbook.dart';
import 'profile.dart';
import 'repay.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage(),
        theme: ThemeData(
          primaryColor: Hexcolor('#221347'),

          //primaryColor: Hexcolor('#221347'),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.orange,
            unselectedItemColor: Hexcolor('#221347'),
            showUnselectedLabels: true,
          ),
        ));
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final List<Widget> _children = [MyHomepage(), Passbook(), Repay(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('#E0E0E0'),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            title: Text('PASSBOOK'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('REPAY'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('PROFILE'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
