import 'package:flutter/material.dart';

class FunnyLove extends StatefulWidget {
  const FunnyLove({super.key});

  @override
  State<FunnyLove> createState() => _FunnyLoveState();
}

class _FunnyLoveState extends State<FunnyLove> {
  List loveData = [
    ["In a world of laughter, we'll dance and sing,\nWhere jokes and humor take the lead,\nWith smiles and chuckles, our hearts will ring,\nIn this funny world, we'll find what we need."],
    ["Laughter's the key to a world so bright,\nWith humor as our guiding star,\nFunny moments, morning and night,\nIn this funny world, no matter how bizarre."],
    ["With jokes and jests, we'll find our way,\nIn a world of humor, we'll stay,\nLife's a comedy, come what may,\nIn this funny world, we'll laugh and play."],
    ["Funny faces and comical tales,\nIn a world of mirth, where laughter prevails,\nWith joy in our hearts, our ship sets sail,\nIn this funny world, our happiness trails."],
    ["In a world of wit, we'll have our fun,\nWith humor as bright as the morning sun,\nFunny moments, one by one,\nIn this funny world, we're second to none."],
    ["With a joke and a grin, we'll face the day,\nIn a world of funny, we're here to stay,\nLife's an amusing, crazy array,\nIn this funny world, we'll find our own way."],
    ["Funny stories and humorous jests,\nIn a world of comedy, we'll be our best,\nWith laughter in our hearts, we're blessed,\nIn this funny world, we'll pass every test."],
    ["In a world of laughter, we'll roam and roam,\nWith humor as our happy home,\nFunny moments, like a poem,\nIn this funny world, we'll never feel alone."],
    ["With jokes and gags, we'll have our fill,\nIn a world of funny, we're on the hill,\nLife's a chuckle, it's such a thrill,\nIn this funny world, we always will."],
    ["Funny faces and amusing sights,\nIn a world of humor, we'll reach new heights,\nWith laughter, our days and nights,\nIn this funny world, we'll find our delights."],
    ["In a world of jest, we'll be at play,\nWith humor as our guiding way,\nFunny moments, come what may,\nIn this funny world, we're here to stay."],
    ["With a joke and a grin, we'll dance and prance,\nIn a world of funny, we'll take a chance,\nLife's a circus, a joyful dance,\nIn this funny world, we'll find our romance."],
    ["Funny tales and witty repartee,\nIn a world of comedy, we'll be carefree,\nWith laughter, we'll set our spirits free,\nIn this funny world, we'll always agree."],
    ["In a world of laughter, we'll laugh and play,\nWith humor as our guiding ray,\nFunny moments, day by day,\nIn this funny world, we'll be okay."],

    ["With jokes and pranks, we'll have a ball,\nIn a world of funny, we'll stand tall,\nLife's a comedy, after all,\nIn this funny world, we'll never fall."]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Funny Love Poems'),
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

                      Icon(Icons.copy,size: 20,color: Colors.white,),
                      Icon(Icons.share,size: 20,color: Colors.white,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                  padding: EdgeInsets.only(left: 10),
                  height: 160,
                  width: 330,

                  decoration: BoxDecoration(
                      color: Colors.orange,
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
