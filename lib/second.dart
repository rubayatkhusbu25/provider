import 'package:flutter/material.dart';

class Second extends StatefulWidget {

  final List<int>numbers;

  const Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Provider")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                widget.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Text(
                        widget.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },)),


            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {

            });
          int last = widget.numbers.last +1;
          widget.numbers.add(last);

            
          },
        ),

    );
  }
}
