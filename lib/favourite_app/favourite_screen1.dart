import 'package:flutter/material.dart';

import 'favourite_screen2.dart';

class FavouriteScreen1 extends StatefulWidget {
  const FavouriteScreen1({super.key});

  @override
  State<FavouriteScreen1> createState() => _FavouriteScreen1State();
}

class _FavouriteScreen1State extends State<FavouriteScreen1> {
  List<int> selectedItems =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteScreen2(selectedItems: selectedItems)));
            },
              icon: Icon(Icons.favorite,color: Colors.blue,))
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
          return Column(
            children: [
              ListTile(
                onTap: (){
                  setState(() {
                    if(selectedItems.contains(index)){
                      selectedItems.remove(index);
                    }else{
                      selectedItems.add(index);


                    }


                  });

                },

                tileColor: Colors.grey.shade300,
                title: Text("Item $index"),
                trailing: selectedItems.contains(index)? Icon(Icons.favorite):Icon(Icons.favorite_border),

              ),
              Divider(height: 3,)
            ],
          );

      })
    );
  }
}
