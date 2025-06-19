import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_provider.dart';
import 'favourite_screen2.dart';

class FavouriteScreen1 extends StatefulWidget {
  const FavouriteScreen1({super.key});

  @override
  State<FavouriteScreen1> createState() => _FavouriteScreen1State();
}

class _FavouriteScreen1State extends State<FavouriteScreen1> {
  // List<int> selectedItems =[];
  @override
  Widget build(BuildContext context) {
    final FavProvider favProvider = Provider.of<FavProvider>(context,listen:false);
    print("screen1");

    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScreen2()));
            },
              icon: Icon(Icons.favorite,color: Colors.blue,))
        ],
      ),
      body: ListView.builder(
       itemCount: 10,
         itemBuilder: (context,index){
           print("screen1 : only widget");

           return Consumer<FavProvider>(
               builder: (context, value, child)=>
            Column(
             children: [
               ListTile(
                 onTap: (){
                   favProvider.favAdd(index);

                 },

                 tileColor: Colors.grey.shade300,
                 title: Text("Item $index"),
                 trailing: value.selectedItems.contains(index)? Icon(Icons.favorite):Icon(Icons.favorite_border),

               ),
               Divider(height: 3,)
             ],
                      ),
           );

              })
    );
  }
}
