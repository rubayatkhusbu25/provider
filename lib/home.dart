import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/number_list.dart';
import 'package:provider_state_app/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Consumer<NumberList>(
      builder:(context, numberList, child)=> Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(numberList.numbers.last.toString(),style: TextStyle(fontSize: 30)),
              Expanded(
                  child: ListView.builder(
                    itemCount: numberList.numbers.length,
                      itemBuilder: (context, index){
      
                        return Text(numberList.numbers[index].toString(),style: TextStyle(fontSize: 30),);
                      })),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
              }, child: Text("Second",style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
            onPressed: (){
            numberList.add();


      
            }),
      
      ),
    );
  }
}
