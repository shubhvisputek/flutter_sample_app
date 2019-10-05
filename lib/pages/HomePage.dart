import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../pages/MerchantList.dart';
import '../pages/MyAccount.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_title),
      //   elevation: 0.0,
      //   centerTitle: true,
      // ),
      body: Container(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            MerchantList(),
            MyAccount(),
            MyAccount(),
            MyAccount(),
            MyAccount(),
          ],
          onPageChanged: (index) async {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        animationDuration: Duration(milliseconds: 500),
        onItemSelected: (index) async {
          _pageController.jumpToPage(
            index,
            // duration: Duration(milliseconds: 500),
            // curve: Curves.ease,
          );
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.view_list),
              title: Text('My Orders'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.share),
              title: Text('Refer & Earn'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('My Account'),
              activeColor: Colors.orange),
        ],
      ),
    );
  }
}
