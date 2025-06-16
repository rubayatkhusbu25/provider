import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/single_provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final CountProvider countProvider = Provider.of<CountProvider>(context,listen: false); //initializing provider
    print("object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Provider"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context,countPro,child){
            print("object==>");
            return  Text(countPro.count.toString(),
              style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),);

          }

           ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            countProvider.increaseCount();

          },

      child: Icon(Icons.add),),
    );
  }
}
