import 'package:flutter/material.dart';
import './beranda.dart';
import './berita.dart';
import './akun.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new Beranda(), new Berita(), new Akun()];



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Colors.red,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label:'Beranda',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.assignment,
              color: Colors.red,
            ),
            icon: new Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            label:'Berita',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.people,
              color: Colors.red,
            ),
            icon: new Icon(
              Icons.people,
              color: Colors.grey,
            ),
            label:'Akun',
          ),
        ],
      ),
    );
  }

}