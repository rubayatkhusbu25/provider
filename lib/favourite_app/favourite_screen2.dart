import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_provider.dart';

class FavouriteScreen2 extends StatefulWidget {
  // final List<int>selectedItems;

  const FavouriteScreen2({super.key});

  @override
  State<FavouriteScreen2> createState() => _FavouriteScreen2State();
}

class _FavouriteScreen2State extends State<FavouriteScreen2> {
  @override
  Widget build(BuildContext context) {
    final FavProvider favProvider = Provider.of<FavProvider>(context,listen:false);
    print("screen2");
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourite App"),
          actions: [
            IconButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScreen2()));
                },
                icon: Icon(Icons.favorite,color: Colors.blue,))
          ],
        ),
        body: Consumer<FavProvider>(
          builder: (context,value,child)=>
           ListView.builder(
              itemCount: favProvider.selectedItems.length,
              itemBuilder: (context,index){
                print("screen2 : only widget");
                return Column(
                  children: [
                    ListTile(
                      onTap: (){
                        favProvider.favRemove(index);
                        // setState(() {
                        //  widget.selectedItems.removeAt(index);
                        //
                        // });
                      },
          
                      tileColor: Colors.grey.shade300,
                      title: Text("item ${value.selectedItems[index].toString()}"),
                      trailing: value.selectedItems.isNotEmpty? Icon(Icons.favorite):null,
          
                    ),
                    Divider(height: 3,)
                  ],
                );
          
              }),
        )

    );
  }
}
