// import 'package:flutter/material.dart';
// import 'package:love_best_poem/provider/favourite_provider.dart';
// import 'package:provider/provider.dart';
//
//
// class MyFavouriteItemScreen extends StatefulWidget {
//   const MyFavouriteItemScreen({super.key});
//
//   @override
//   State<MyFavouriteItemScreen> createState() => _MyFavouriteItemScreenState();
// }
//
// class _MyFavouriteItemScreenState extends State<MyFavouriteItemScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Colors.deepPurpleAccent,
//         centerTitle: true,
//         title: Text('My Favourite',style: TextStyle(color: Colors.white),),
//
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: favouriteProvider.selectedItem.length,
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
