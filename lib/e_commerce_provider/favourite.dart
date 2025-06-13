import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/e_commerce_provider/box_list.dart';

class Favourite extends StatefulWidget {


  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BoxList>(
      builder: (context,boxList,child)=>Scaffold(
        backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          title: Text("E-Commerce App"),
        ),
        body: Column(
          children: [
            Divider(color: Colors.pink,),
            Text("All items are here",style: TextStyle(fontSize: 18),),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,),
                    itemCount: boxList.boxes.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(
                          elevation: 1,
                          color: Colors.teal.shade300,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                   // color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1
                                    ),

                                    image: DecorationImage(
                                        image: AssetImage("assets/images/13.jpg"),fit: BoxFit.fitWidth),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Expanded(
                                    child: GridView.builder(
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                        ),
                                        itemCount: 6,
                                        itemBuilder:(context,position){
                                          return Card(
                                            color: Colors.white,
                                            child: Icon(Icons.ac_unit,color: Colors.black38,),
                                          );
                                        }
                                    ))
                              ],
                            ),
                          ),

                        ),
                      );
                    }))
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,color: Colors.white,),
            backgroundColor: Colors.teal,

            onPressed: (){
              boxList.add();
              // setState(() {
              //
              // });
              // boxList.boxes.add(boxList.boxes.length);
            }),

      ),
    );
  }
}
