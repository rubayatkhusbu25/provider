import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/e_commerce_provider/multiple_provider/opacity_changer_provider.dart';

class OpacityChanger extends StatefulWidget {
  const OpacityChanger({super.key});

  @override
  State<OpacityChanger> createState() => _OpacityChangerState();
}

class _OpacityChangerState extends State<OpacityChanger> {

   // double value = 1.0;

  @override
  Widget build(BuildContext context) {

    final OpacityChangerProvider opacityChangerProvider = Provider.of<OpacityChangerProvider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("Multi provider"),
      ),
      body: Center(
        child: Consumer<OpacityChangerProvider>(
          builder: (context,opChng, child)=>
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(

                  value: opChng.value,
                  min: 0.0,
                  max: 1.0,
                  activeColor: Colors.pink.shade900,
                  onChanged: (val){
                    opacityChangerProvider.change(val);

                  }),

              Container(
                width: double.maxFinite,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 14),
                color: Colors.pink.withOpacity(opChng.value),
              )
            ],
          ),
        ),
      ),
    );
  }
}
