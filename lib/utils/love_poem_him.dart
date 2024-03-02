import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class LovePoemForHim extends StatefulWidget {
  const LovePoemForHim({super.key});

  @override
  State<LovePoemForHim> createState() => _LovePoemForHimState();
}

class _LovePoemForHimState extends State<LovePoemForHim> {
  List loveData = [


    ["In your arms, I've found my place,\nLove's tender embrace, your warm embrace,\nWith you, life's a beautiful chase,\nLove's grace, in your gaze."],

    ["Your smile, a beacon in the night,\nLove's guiding light, so pure and bright,\nWith you, everything feels so right,\nLove's flight, in your sight."],

    ["In your laughter, my heart takes flight,\nLove's delight, in every insight,\nWith you, every moment feels just right,\nLove's height, in your love so tight."],

    ["Your touch, a gentle, soothing rain,\nLove's refrain, in pleasure and in pain,\nWith you, life's a sweet, melodious strain,\nLove's gain, in our love's terrain."],

    ["In your presence, my soul's at ease,\nLove's sweet tease, a gentle breeze,\nWith you, I've found my heart's keys,\nLove's peace, in your love's trapeze."],

    ["With you, I've found my greatest friend,\nLove's blend, a bond that'll never end,\nIn your eyes, my heart does mend,\nLove's trend, on you I depend."],

    ["Your voice, a melody in the night,\nLove's flight, like a bird in its might,\nWith you, every day feels so bright,\nLove's light, in your love's sight."],

    ["In your love, I've found my home,\nLove's poem, where our hearts freely roam,\nWith you, I'll never feel alone,\nLove's dome, in your love, I've grown."],

    ["Your kindness, a gift so rare,\nLove's care, a love beyond compare,\nWith you, life's a love affair,\nLove's flair, in the love we both share."],

    ["In your strength, I find my way,\nLove's display, in every word you say,\nWith you, I cherish every day,\nLove's array, in our love's ballet."],

    ["Your love, a treasure I hold dear,\nLove's frontier, where there's nothing to fear,\nIn your arms, I'll always be near,\nLove's sheer, in our love, so clear."],

    ["With you, I've discovered what's true,\nLove's debut, in every moment with you,\nIn your smile, my dreams come true,\nLove's hue, in the love we both knew."],

    ["Your love, a light in the darkest night,\nLove's flight, in your love, I find my sight,\nWith you, my world is bathed in light,\nLove's might, in your love, so right."],

    ["In your love, I've found my place of rest,\nLove's best, a journey we've both blessed,\nWith you, I've been truly and fully impressed,\nLove's zest, in our love, I am so well-dressed."],

    ["Your love, a story that's just begun,\nLove's fun, a journey filled with sun,\nWith you, I've found my only one,\nLove's run, in your love, I'm the lucky one."]

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Love Poems For Him'),
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
                      color: Colors.tealAccent,
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
