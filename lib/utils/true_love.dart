import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class TrueLove extends StatefulWidget {
  const TrueLove({super.key});

  @override
  State<TrueLove> createState() => _TrueLoveState();
}

class _TrueLoveState extends State<TrueLove> {
  List loveData = [

  ["In the depths of our hearts, love found its way,\nTrue love's embrace, night and day,\nWith you, I've found the only way,\nTrue love's connection, here to stay."], ["A love that's pure, like a shining star,\nTrue love's journey, near and far,\nIn your arms, we've come so far,\nTrue love's light, wherever we are."],
    ["In your eyes, I found my truth,\nTrue love's wisdom, since our youth,\nWith you, my heart has found its booth,\nTrue love's promise, a lasting truth."],
    ["With each passing day, our love has grown,\nTrue love's bond, in every tone,\nIn your love, I've truly known,\nTrue love's treasure, in your love zone."],
    ["In the tapestry of our shared delight,\nTrue love's journey, in the moonlight,\nWith you, I've reached love's height,\nTrue love's comfort, in each other's sight."],
    ["In your smile, I found my way,\nTrue love's warmth, like a sunny day,\nWith you, life's troubles fade away,\nTrue love's grace, in every word you say."],
    ["With laughter and tears, we've shared the road,\nTrue love's story, in every episode,\nIn your embrace, my heart has flowed,\nTrue love's melody, in the love we've sowed."],
    ["In the whispers of our hearts' refrain,\nTrue love's connection, a lifelong chain,\nWith you, my heart will remain,\nTrue love's calm, in life's hurricane."],
    ["A love so strong, like a mountain tall,\nTrue love's embrace, we'll never fall,\nIn your eyes, I've found it all,\nTrue love's haven, our love's grand hall."],
    ["With every kiss, our souls unite,\nTrue love's passion, our guiding light,\nWith you, life feels so right,\nTrue love's magic, both day and night."],
    ["In the canvas of our shared creation,\nTrue love's art, a lifelong dedication,\nIn your love, I've found my salvation,\nTrue love's celebration, a true revelation."],
    ["With every heartbeat, our love remains,\nTrue love's promise, no need for reins,\nIn your laughter, my heart sustains,\nTrue love's beauty, in life's endless plains."],
    ["In the moon's soft glow, we found our place,\nTrue love's moment, a timeless space,\nWith you, I've felt love's warm embrace,\nTrue love's serenity, in your embrace."],
    ["In the pages of our love's story,\nTrue love's grace, in all its glory,\nIn your love, I've found my quarry,\nTrue love's sanctuary, in our love inventory."],
    ["With the passage of time, our love has grown,\nTrue love's beauty, like a gemstone,\nIn your love, I've found my own,\nTrue love's treasure, in love's grand zone."],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('True Love Poems'),
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
                      color: Colors.green,
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
