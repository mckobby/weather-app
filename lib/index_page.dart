import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/news_page.dart';
import 'package:weather_app/place_page.dart';
import 'package:weather_app/profile_page.dart';
import 'package:weather_app/weather_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    PlaceScreen(),
    NewsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 225, 238, 247),
              blurRadius: 20,
            )
          ],
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _currentIndex,
          dotIndicatorColor: Colors.transparent,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: const Color.fromARGB(255, 166, 214, 248),
          // enableFloatingNavBar: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.cloudy_snowing),
                  Text(
                    "Weather",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.place),
                  Text(
                    "Place",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.newspaper),
                  Text(
                    "News",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Column(
                children: const [
                  Icon(Icons.person),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
