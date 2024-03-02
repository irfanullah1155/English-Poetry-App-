import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class SadLove extends StatefulWidget {
  const SadLove({super.key});

  @override
  State<SadLove> createState() => _SadLoveState();
}

class _SadLoveState extends State<SadLove> {
  List loveData = [


    ["In the silence of our love's demise,\nSad love's lonely cries, as the sunset dies,\nWith you, I saw the truth in your eyes,\nSad love's goodbyes, beneath tearful skies."],

    ["A love that once burned bright and bold,\nSad love's story told, in memories we hold,\nWith you, I found warmth from the cold,\nSad love's old, a tale of love grown cold."],

    ["In the echo of our distant hearts,\nSad love departs, as love slowly imparts,\nWith you, we drift, though it's hard to chart,\nSad love's hearts, torn worlds apart."],

    ["Your touch, once a comfort to my soul,\nSad love's toll, as emotions take their toll,\nWith you, my heart paid the ultimate toll,\nSad love's role, in love's painful scroll."],

    ["In your absence, the world's grown gray,\nSad love's dismay, where colors fade away,\nWith you, my heart lost its way,\nSad love's day, in love's disarray."],

    ["With every word, our love unfurled,\nSad love's world, where dreams were twirled,\nWith you, love's future no longer unfurls,\nSad love's swirl, in the past it's hurled."],

    ["In the emptiness that now prevails,\nSad love's veils, where hope oft derails,\nWith you, our love's ship slowly sails,\nSad love's trails, where our love fails."],

    ["Your voice, once music to my ears,\nSad love's tears, as love disappears,\nWith you, a heartache that's spanned years,\nSad love's fears, in a sea of tears."],

    ["In your memory, my heart is ensnared,\nSad love's despair, with memories shared,\nWith you, a love forever declared,\nSad love's bared, a love deeply cared."],

    ["With each passing day, love's flame grew dim,\nSad love's hymn, a requiem for what's been,\nWith you, the future feels so grim,\nSad love's whim, in the tears we swim."],

    ["In the echoes of love's last refrain,\nSad love's pain, a never-ending chain,\nWith you, our love's melody remains,\nSad love's rain, in love's heartache and strain."],

    ["With your absence, the world is colder,\nSad love's smolder, as hearts grow older,\nWith you, love's story, a heavy folder,\nSad love's boulder, in love's heavy shoulder."],

    ["In the silence, the truth is plain,\nSad love's strain, where love ends in vain,\nWith you, love's scars still remain,\nSad love's rain, in the heart's endless pain."],

    ["With the passage of time, we've grown apart,\nSad love's art, in the breaking of a heart,\nWith you, a love that's torn apart,\nSad love's start, as we depart."],

    ["In your absence, my heart is forlorn,\nSad love's thorn, in a world that's torn,\nWith you, a love forever mourned,\nSad love's dawn, in love's memories adorned."],

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Sad Love Poems'),
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
                      color: Colors.indigo,
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
