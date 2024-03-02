import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class ShortLove extends StatefulWidget {
  const ShortLove({super.key});

  @override
  State<ShortLove> createState() => _ShortLoveState();
}

class _ShortLoveState extends State<ShortLove> {
  List loveData = [


    ['In your eyes, I find my home,\nWith you, Ill never be alone\n, Love s a journey, forever we\'all roam,\n Together,our hearts have grown.'],
    ['Your smile, a sunbeam in the rain,\nWith you, every day is a gain,\nIn your love, there\'s no pain,\nForever, our hearts remain.'],
    ['Love\'s a melody, we\'re the song,\nWith you, I always belong,\nIn your embrace, I feel strong,\nOur love, forever lifelong.'],
    ['Your laughter, a sweet symphony,\nWith you, life\'s a vibrant spree,\n In your arms, I\'m wild and free,\nOur love, a masterpiece of glee.'],
    ['You\'re the star in my darkest night,\nWith you, everything feels right,\n In your love, I see the light,\nForever, you\'re my heart\'s delight.'],
    ['In your words, I find my peace,\nWith you, all my worries cease,\nLove\'s a treasure, never to decrease,\nOur bond, a love that\'ll never cease.'],
    ['Your touch, a gentle caress,\nWith you, life\'s a sweet excess,\n In your love, I confess,\nForever, I\'ll cherish and impress.'],
    ['Love\'s a fire in our hearts,\n With you, we\'ll never be apart,\nIn your eyes, I see the sparks,\nOur love, an eternal work of art.'],
    ['Your love, a beacon in the night,\nWith you, everything feels so right,\nIn your arms, I\'ll hold on tight,\n Our love, a shining star, so bright.'],
    ['In your presence, I find my grace,\nWith you, life\'s a passionate chase, \nLove\'s a journey, our hearts embrace,\nForever, I\'ll adore your face.'],
    ['Your voice, a soothing song,\nWith you, I always belong,\nIn your love, I am strong,\nOur bond, forever lifelong.'],
    ['Love\'s a story, ours to tell,\nWith you, every moment is swell,\nIn your love, I\'m under a spell,\nForever, we\'re doing well.'],
    ['Your eyes, a window to your soul,\nWith you, my heart is whole,\nIn your love, I\'ve found my role,\n Our love, a precious treasure, my goal.'],
    ['In your laughter, I find my joy,\nWith you, there\'s no need to be coy,\n Love\'s a feeling, not a ploy,\nForever, I\'ll be your love\'s envoy.'],
    ['Your smile, a beacon in the storm,\nWith you, I\'m safe and warm,\n In your love, my heart will transform,\nOur love, an everlasting norm.']


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Short Love Poems'),
      ),
      body: ListView.builder(
          itemCount: loveData.length,
          itemBuilder: (context,index){
            String copyData = loveData[index][0];
            String shareData = loveData[index][0];
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
                      InkWell(
                      onTap: (){

                      },
                          child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.white,)),
                      SizedBox(width: 100,),

                       InkWell(
                         onTap: (){
                           Clipboard.setData(ClipboardData(text: copyData));

                         },
                           child: Icon(Icons.copy,size: 20,color: Colors.white,)),
                      InkWell(
                        onTap: (){
                          Share.share(shareData);
                        },
                          child: Icon(Icons.share,size: 20,color: Colors.white,)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  padding: EdgeInsets.only(left: 10,),
                  height: 160,
                  width: 330,

                  decoration: BoxDecoration(
                      color: Colors.brown,
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
