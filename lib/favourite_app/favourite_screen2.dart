import 'package:flutter/material.dart';

class FavouriteScreen2 extends StatefulWidget {
  final List<int>selectedItems;

  const FavouriteScreen2({super.key, required this.selectedItems,});

  @override
  State<FavouriteScreen2> createState() => _FavouriteScreen2State();
}

class _FavouriteScreen2State extends State<FavouriteScreen2> {
  @override
  Widget build(BuildContext context) {
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
        body: ListView.builder(
            itemCount: widget.selectedItems.length,
            itemBuilder: (context,index){
              return Column(
                children: [
                  ListTile(
                    onTap: (){
                      setState(() {
                       widget.selectedItems.removeAt(index);

                      });
                    },

                    tileColor: Colors.grey.shade300,
                    title: Text("item ${widget.selectedItems[index].toString()}"),
                    trailing: widget.selectedItems.isNotEmpty? Icon(Icons.favorite):null,

                  ),
                  Divider(height: 3,)
                ],
              );

            })

    );
  }
}
