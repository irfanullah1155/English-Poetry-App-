import 'package:flutter/material.dart';

import '../utils/break.dart';
import '../utils/first.dart';
import '../utils/funny_love.dart';
import '../utils/i_love_you.dart';
import '../utils/love_poem_her.dart';
import '../utils/love_poem_him.dart';
import '../utils/main_box_container.dart';
import '../utils/romantic.dart';
import '../utils/sad.dart';
import '../utils/short_love.dart';
import '../utils/true_love.dart';


class PoetryCollection extends StatefulWidget {
  const PoetryCollection({super.key});

  @override
  State<PoetryCollection> createState() => _PoetryCollectionState();
}

class _PoetryCollectionState extends State<PoetryCollection> {
  void navigateToScreen(screenName){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>screenName));
  }
  List mainBoxData = [
    // [title, color, screen]
    ['Short Love\nPoems', Colors.brown, ShortLove()],
    ['I Love You\nPoems', Colors.red, ILoveYou()],
    ['Romantic\nPoems', Colors.blue,RomanticLovePoems()],
    ['Funny Love\nPoems', Colors.orange, FunnyLove()],
    ['First Love\nPoems', Colors.redAccent, FirstLovePoems ()],
    ['True Love\nPoems', Colors.green,  TrueLove() ],
    ['Love Poems\nfor Him', Colors.teal,LovePoemForHim() ],
    ['Love Poems\nfor Her', Colors.pink,LovePoemForHer() ],
    ['Sad Love\nPoems', Colors.indigo, SadLove()],
    ['Breakup\nPoems', Colors.purple,BreakUpPoem() ],
  ];
  String selectedValue = 'Option 1';
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Love Best Poems'),
    backgroundColor: Colors.white,
    elevation: 1,
    actions: [

      PopupMenuButton<String>(
        onSelected: (value) {
          // Handle the selected menu item here
          print('Selected: $value');
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'Option 1',
              child: InkWell(
                  child: Text('Share App')),
              onTap: (){

              },
            ),
            PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('Rate App'),
            ),
            PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('Privacy App'),
            ),
            PopupMenuItem<String>(
              value: 'Option 1',
              child: Text('More App'),
            ),
          ];
        },
      ),





    ],

    ),
    body: GridView.builder(
    itemCount: mainBoxData.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

    crossAxisCount: 2,
    childAspectRatio: 1.3/1
    ), itemBuilder: (context, index){
    return MainBoxContainer(
    title: mainBoxData[index][0],
    color: mainBoxData[index][1],
    onPressed: (){
    navigateToScreen(mainBoxData[index][2]);
    },
    );
    }));
  }
}
