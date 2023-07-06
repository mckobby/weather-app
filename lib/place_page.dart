import 'package:flutter/material.dart';
import 'package:weather_app/news_page.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Places"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NewsPage();
              },));
            },
            child: const  Icon(Icons.menu))
        ],
      ),
    );
  }
}