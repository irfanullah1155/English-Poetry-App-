// import 'package:flutter/material.dart';
//
//
// class FavouriteScreen extends StatefulWidget {
//   const FavouriteScreen({super.key});
//
//   @override
//   State<FavouriteScreen> createState() => _FavouriteScreenState();
// }
//
// class _FavouriteScreenState extends State<FavouriteScreen> {
//
//   List<int> selectedItem = [];
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//      appBar: AppBar(
//
//        backgroundColor: Colors.deepPurpleAccent,
//        centerTitle: true,
//        title: Text('Favourite Screen',style: TextStyle(color: Colors.white),),
//        actions: [
//          IconButton(onPressed: (){
//
//          }, icon: Icon(Icons.favorite,color: Colors.white,)
//          )
//        ],
//      ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: 50,
//                 itemBuilder: (context,index){
//                   return Consumer<FavouriteItemProvider>(
//                       builder: (context,value,child){
//                         return ListTile(
//                           onTap: (){
//
//                             if(value.selectedItem.contains(index)){
//                               value.removeItem(index);
//                             }else{
//                               value.addItem(index);
//                             }
//
//
//                           },
//                           title: Text('Item'+index.toString()),
//                           trailing:favouriteProvider.selectedItem.contains(index)? Icon(Icons.favorite) :Icon(Icons.favorite_border_outlined),
//                         );
//                       });
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
