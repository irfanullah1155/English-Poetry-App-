import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class LovePoemForHer extends StatefulWidget {
  const LovePoemForHer({super.key});

  @override
  State<LovePoemForHer> createState() => _LovePoemForHerState();
}

class _LovePoemForHerState extends State<LovePoemForHer> {
  List loveData = [


    ["In your eyes, I see a world so bright,\nLove's pure delight, a guiding light,\nWith you, everything feels just right,\nLove's flight, in your embrace so tight."],

    ["Your smile, a sunrise in the morning haze,\nLove's gentle rays, a joyful phase,\nWith you, life is filled with praise,\nLove's grace, in every loving gaze."],

    ["In your laughter, my heart takes wing,\nLove's song to sing, a melody to bring,\nWith you, every day's a new spring,\nLove's swing, where our hearts take a fling."],

    ["Your touch, a warmth that eases pain,\nLove's gentle rain, a soothing refrain,\nWith you, life's a sweet and tender lane,\nLove's gain, in our love's sweet domain."],

    ["In your presence, my heart finds peace,\nLove's sweet release, a gentle breeze,\nWith you, love's troubles cease,\nLove's lease, in your love, we find ease."],

    ["With you, I've found my dearest friend,\nLove's blend, where hearts gently mend,\nIn your eyes, love's colors blend,\nLove's trend, on you I depend."],

    ["Your voice, a calming lullaby,\nLove's sky, where dreams do fly,\nWith you, every day's a clear blue sky,\nLove's high, in your love, oh my!"],

    ["In your love, I've found my home,\nLove's dome, where our hearts freely roam,\nWith you, I'll never feel alone,\nLove's tone, in your love, I've grown."],

    ["Your kindness, a gift so pure,\nLove's allure, forever we'll endure,\nWith you, life's a love adventure,\nLove's pleasure, in our love so sure."],

    ["In your strength, I find my way,\nLove's display, in what you say,\nWith you, I cherish every day,\nLove's array, in our love's ballet."],

    ["Your love, a treasure so dear,\nLove's frontier, with nothing to fear,\nIn your arms, I'll always be near,\nLove's sheer, in our love, so clear."],

    ["With you, I've discovered what's true,\nLove's debut, in moments with you,\nIn your smile, my dreams come true,\nLove's hue, in the love we both knew."],

    ["Your love, a light in the darkest night,\nLove's flight, in your love, everything's right,\nWith you, my world is bathed in light,\nLove's might, in your love, so bright."],

    ["In your love, I've found my place of rest,\nLove's best, a journey we've both blessed,\nWith you, I've been truly impressed,\nLove's zest, in our love, I'm so well-dressed."],

    ["Your love, a story that's just begun,\nLove's fun, a journey filled with sun,\nWith you, I've found my only one,\nLove's run, in your love, I'm the lucky one."]

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Love Poems For Her'),
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
                      Icon(Icons.favorite_border_outlined,size: 20,color: Colors.white,),
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
                      color: Colors.pink,
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
