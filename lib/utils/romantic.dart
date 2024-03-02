import 'package:flutter/material.dart';

class RomanticLovePoems extends StatefulWidget {
  const RomanticLovePoems({super.key});

  @override
  State<RomanticLovePoems> createState() => _RomanticLovePoemsState();
}

class _RomanticLovePoemsState extends State<RomanticLovePoems> {
  List<List<String>> romanticPoemData = [
    ["Your eyes, like stars in the night's embrace,\nIn their glow, I find my peaceful place,\nI love you, beautiful, with tender grace,\nIn your love, I've found my forever space.",
    ],
    [
      "Your smile, a gentle breeze in the spring,\nWith you, my heart soars, takes wing,\nI love you, beautiful, like a song to sing,\nIn your love, I find the joy you bring.",
    ],
    [
      "In your laughter, I hear a sweet refrain,\nWith you, life's a melody, a soothing rain,\nI love you, beautiful, beyond any chain,\nIn your love, my heart will forever remain.",
    ],
    [
      "Your touch, a soft and comforting caress,\nWith you, I feel complete, nothing less,\nI love you, beautiful, with every tenderness,\nIn your love, I've found my happiness.",
    ],
    [
      "Your voice, like a calming lullaby,\nWith you, all my doubts and fears go by,\nI love you, beautiful, with every sigh,\nIn your love, I'll forever be your ally.",
    ],
    [
      "In your presence, I'm embraced by grace,\nWith you, life's a wondrous, gentle pace,\nI love you, beautiful, as a warm embrace,\nIn your love, I've found my special place.",
    ],
    [
      "Your beauty is a work of art so fine,\nWith you, my heart's in a love entwined,\nI love you, beautiful, in every line,\nIn your love, our hearts forever align.",
    ],
    [
      "Your laughter, a symphony in the air,\nWith you, life is beyond compare,\nI love you, beautiful, without a care,\nIn your love, we make a perfect pair.",
    ],
    [
      "Your beauty, like a blooming rose so fair,\nWith you, life's a vivid, endless affair,\nI love you, beautiful, beyond compare,\nIn your love, I find solace and care.",
    ],
    [
      "In your smile, I see the morning sun,\nWith you, our journey's just begun,\nI love you, beautiful, you're the one,\nIn your love, my life's filled with fun.",
    ],
    [
      "Your love, like a river, deep and wide,\nWith you, I'll forever be by your side,\nI love you, beautiful, no need to hide,\nIn your love, my heart's found its guide.",
    ],
    [
      "Your eyes, like sapphires, they shine so bright,\nWith you, I've found my guiding light,\nI love you, beautiful, day and night,\nIn your love, our love's taking flight.",
    ],
    [
      "Your beauty, like a moonbeam's gentle grace,\nWith you, my heart finds its resting place,\nI love you, beautiful, your sweet embrace,\nIn your love, we've built our lasting base.",
    ],
    [
      "Your laughter, like a melody in the breeze,\nWith you, my heart's at perfect ease,\nI love you, beautiful, with every tease,\nIn your love, we'll find eternal peace.",
    ],
    [
      "Your touch, a gentle whisper in the night,\nWith you, I'm always filled with delight,\nI love you, beautiful, in love's sweet light,\nIn your love, everything feels so right.",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Romantic Poems'),
      ),
      body: ListView.builder(
          itemCount: romanticPoemData.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  padding: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 100,
                      ),

                      Icon(
                        Icons.copy,
                        size: 20,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  padding: EdgeInsets.only(left: 10,),
                  height: 160,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      romanticPoemData[index][0],
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
