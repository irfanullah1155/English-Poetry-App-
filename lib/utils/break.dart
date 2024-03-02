import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';


class BreakUpPoem extends StatefulWidget {
  const BreakUpPoem({super.key});

  @override
  State<BreakUpPoem> createState() => _BreakUpPoemState();
}

class _BreakUpPoemState extends State<BreakUpPoem> {
  List loveData = [
    ["In the aftermath of love's last fight,\nBreakup's endless night, our hearts take flight,\nWith you, we've ended what felt so right,\nBreakup's plight, as we part from sight."],
    ["A love that once burned bright and true,\nBreakup's adieu, our journey is through,\nWith you, we've bid our love adieu,\nBreakup's rue, as we say our last adieu."],
    ["In the silence, our love's song is done,\nBreakup's run, where two hearts become one,\nWith you, we part, no longer as one,\nBreakup's sun, as love's journey is done."],
    ["Your touch, once a fire in the night,\nBreakup's blight, as we face love's twilight,\nWith you, we've ended love's delight,\nBreakup's fight, as we say our last goodnight."],
    ["In your absence, the world is gray,\nBreakup's dismay, as we go our separate way,\nWith you, we part, no longer to stay,\nBreakup's play, as we part and stray."],
    ["With every word, our love unwound,\nBreakup's ground, in a love that's no longer bound,\nWith you, love's story's no longer sound,\nBreakup's round, in love's battleground."],
    ["In the emptiness where love now fails,\nBreakup's trails, where our love's ship derails,\nWith you, we part, as our love pales,\nBreakup's gales, as our love's story ails."],
    ["Your voice, once a melody so sweet,\nBreakup's beat, where two hearts no longer meet,\nWith you, we part, our love's defeat,\nBreakup's heat, in a love now obsolete."],
    ["In your memory, my heart does ache,\nBreakup's stake, in love's final earthquake,\nWith you, love's bond forever at stake,\nBreakup's wake, as love's ties we break."],
    ["With each passing day, love slowly dies,\nBreakup's ties, where love's flame no longer flies,\nWith you, we part, with tearful eyes,\nBreakup's skies, as we say our last goodbyes."],
    ["In the echoes of our love's refrain,\nBreakup's pain, where love ends in disdain,\nWith you, we part, our hearts in chains,\nBreakup's rain, in love's melancholy lane."],
    ["With your absence, the world is colder,\nBreakup's folder, as we grow older,\nWith you, love's story, a heavy boulder,\nBreakup's smolder, in love's heavy shoulder."],
    ["In the silence, the truth is clear,\nBreakup's rear, as love disappears,\nWith you, we part, it's hard to bear,\nBreakup's tear, in love's endless sphere."],
    ["With the passage of time, we grow apart,\nBreakup's art, in the breaking of a heart,\nWith you, a love that's torn apart,\nBreakup's start, as we depart."],
    ["In your absence, my heart is torn,\nBreakup's thorn, in love's melancholy mourn,\nWith you, a love that's now forlorn,\nBreakup's dawn, in love's memories shorn."],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Breakup Love Poems'),
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
                      color: Colors.purple,
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
