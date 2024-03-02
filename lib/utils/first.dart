import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class FirstLovePoems extends StatefulWidget {
  const FirstLovePoems({super.key});

  @override
  State<FirstLovePoems> createState() => _FirstLovePoemsState();
}

class _FirstLovePoemsState extends State<FirstLovePoems> {
  List loveData = [


    ["In the innocence of youth, our hearts did meet,\nFirst love's sweet kiss, oh, so tender and neat,\nIn your eyes, my world felt complete,\nFirst love's magic, a memory so sweet."],
    ["A stolen glance, a blush, and a sigh,\nFirst love's adventure, soaring so high,\nIn your presence, my heart did fly,\nFirst love's joy, beneath the endless sky."],
    ["In the pages of our first love's story,\nWe found a world of hope and glory,\nWith you, life's colors were vivid and gory,\nFirst love's dreams, forever in memory."],
    ["Hand in hand, we walked together,\nFirst love's promise, light as a feather,\nWith you, I felt safe from any weather,\nFirst love's warmth, a love to treasure."],
    ["In the whispers of our secret affair,\nFirst love's excitement, beyond compare,\nWith you, I found love so rare,\nFirst love's adventure, a journey we dare."],
    ["With every word, our connection grew,\nFirst love's bond, so strong and true,\nIn your arms, I felt brand new,\nFirst love's fire, forever in view."],
    ["In the hush of night, we shared our dreams,\nFirst love's passion, more vibrant than it seems,\nWith you, life became a beautiful stream,\nFirst love's enchantment, a world of gleams."],
    ["With laughter and tears, our love did grow,\nFirst love's journey, a wonderful flow,\nIn your presence, my heart aglow,\nFirst love's happiness, a radiance to show."],
    ["In the echoes of our hearts' refrain,\nFirst love's melody, a gentle rain,\nWith you, I felt free from any chain,\nFirst love's beauty, where love did reign."],
    ["In the tapestry of our love's embrace,\nFirst love's tenderness, a gentle grace,\nWith you, life took a different pace,\nFirst love's serenity, in your embrace."],
    ["With every kiss, our love was sealed,\nFirst love's emotions, so deeply revealed,\nIn your eyes, my fate was sealed,\nFirst love's connection, our love unsealed."],
    ["In the moon's soft glow, we found our place,\nFirst love's moment, a timeless space,\nWith you, I felt love's warm embrace,\nFirst love's magic, in your embrace."],
    ["With each heartbeat, our love did soar,\nFirst love's promise, forevermore,\nIn your laughter, my heart would roar,\nFirst love's beauty, at love's grand shore."],
    ["In the canvas of our love's creation,\nFirst love's colors, a vivid sensation,\nWith you, I found my inspiration,\nFirst love's spark, a true revelation."],
    ["With the passage of time, our love grew strong,\nFirst love's memories, where we belong,\nIn your love, my heart found its song,\nFirst love's journey, where we all along."]

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('First Love Poems'),
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
                      color: Colors.redAccent,
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
