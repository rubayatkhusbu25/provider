import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/number_list.dart';

class Second extends StatefulWidget {

  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberList>(
      builder:(context, numberList, child)=> Scaffold(
        appBar: AppBar(title: Text("Provider")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                numberList.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberList.numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        numberList.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            numberList.add();

            
          },
        ),
      ),
    );
  }
}
