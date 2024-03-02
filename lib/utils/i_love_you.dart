import 'package:flutter/material.dart';

class ILoveYou extends StatefulWidget {
  const ILoveYou({super.key});

  @override
  State<ILoveYou> createState() => _ILoveYouState();
}

class _ILoveYouState extends State<ILoveYou> {
  List loveData = [
   ['Your beauty shines like the morning sun,\nIn your radiance, my heart is won,\nlove you, beautiful, you\'re the one,\nIn your love, my life\'s begun.'],
    ['Your beauty is a work of art,\nWith every glance, you steal my heart,\nI love you, beautiful, from the start,\nIn your love, we\'ll never be apart.'],
    ['You\'re a vision of grace, so fair,\nIn your presence, I cannot help but stare,\n I love you, beautiful, beyond compare,\nIn your love, I find solace and care.'],
    ['Your beauty is a beacon in the night,\nWith you, everything feels so right,\nI love you, beautiful, with all my might,\nIn your love, my world is pure and bright.'],
    ['In your smile, I find my bliss,\nWith you, every day is filled with a kiss,\nI love you, beautiful, in every way, I confess,\nIn your love, I\'ve found eternal happiness.'],
    ['Your beauty is a gem, so rare,\nWith you, life is beyond compare,\nI love you, beautiful, with a heart laid bare,\nIn your love, I\'ll always be there.'],
    ['You\'re a flower in full bloom,\n In your beauty, there\'s no gloom,\nI love you, beautiful, like a sweet perfume,\nIn your love, my heart finds room.'],
    ['Your beauty is like a gentle breeze,\nWith you, I\'m at complete ease,\n I love you, beautiful, if you please, \nIn your love, I\'ve found inner peace.'],
    ['Your beauty is like a precious gem,\nWith you, life\'s a cherished dream, \nI love you, beautiful, in every esteem,\n In your love, nothing is as it seems.'],
    ['In your eyes, I see a starry night,\nWith you, everything feels so right,\nI love you, beautiful, in every light,\nIn your love, my future\'s bright.'],
    ['Your beauty is a beacon in the storm,\nWith you, my love is always warm,\nI love you, beautiful, in every form,\nIn your love, my heart takes a firm norm.'],
    ['Your beauty is a treasure, so rare,\nWith you, I find love beyond compare,\nI love you, beautiful, I swear,\nIn your love, I\'m beyond repair.'],
    ['In your laughter, my heart\'s delight,\n With you, my world is forever bright,\nI love you, beautiful, day and night,\n In your love, everything\'s just right.'],
    ['Your beauty, a song in my heart,\nWith you, we\'ll never be apart,\n I love you, beautiful, from the very start,\nIn your love, we\'ll never depart.'],
    ['In your presence, I find my grace,\nWith you, life\'s a passionate chase,\n I love you, beautiful, in every embrace,\n In your love, we\'ve created a special place.'],


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('I Love You Poems'),
      ),
      body: ListView.builder(
        itemCount: loveData.length,
          itemBuilder: (context,index){
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 20,right: 20),
              padding: EdgeInsets.only(bottom: 10,right: 20,left: 20),
              height: 200,

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.favorite_border_outlined,size: 20,color: Colors.white,),
                  SizedBox(width: 100,),

                  Icon(Icons.copy,size: 20,color: Colors.white),
                  Icon(Icons.share,size: 20,color: Colors.white),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 20,right: 20),
              padding: EdgeInsets.only(left: 10,),
              height: 160,
              width: 330,

              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text(loveData[index][0],style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
            ),

          ],
        );
      }),
    );
  }
}
