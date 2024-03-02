import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:love_best_poems/view/poetry_collection.dart';


import '../utils/main_box_container.dart';
import 'my_favourite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  List  pages = [
    PoetryCollection(),
    MyFavourite()
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: pages[pageIndex],
        bottomNavigationBar:CupertinoTabBar (
          currentIndex: pageIndex,
          onTap: (value){
            pageIndex = value;
            setState(() {

            });
          },
          items: const [
            BottomNavigationBarItem(

              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined,color: Colors.black,),
                label: 'Favourites'),


          ],
        )
    );
  }
}

