import 'package:flutter/material.dart';
import 'package:provider_state_app/second.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<int> numbers =[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(numbers.last.toString(),style: TextStyle(fontSize: 30)),
              Expanded(
                  child: ListView.builder(
                    itemCount: numbers.length,
                      itemBuilder: (context, index){
      
                        return Text(numbers[index].toString(),style: TextStyle(fontSize: 30),);
                      })),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(numbers: numbers)));
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


              setState(() {

              });
             int last = numbers.last + 1;
              numbers.add(last);
      
            }),
      

    );
  }
}
