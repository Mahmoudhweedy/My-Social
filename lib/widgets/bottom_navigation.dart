import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none,
          ),
          title: Text('Notification'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mail_outline,
          ),
          title: Text('Chat'),
        ),
      ],
      onTap: (int x) => debugPrint('index $x'),
      type: BottomNavigationBarType.fixed,
      fixedColor: Theme.of(context).primaryColor,
      elevation: 10,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: 30.0,
    );
  }
}
