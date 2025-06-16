import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../e_commerce_provider/e_home.dart';
import 'count_example.dart';
import 'count_provider.dart';



class AppSp extends StatelessWidget {
  const AppSp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (_)=>CountProvider(),
        child:  MaterialApp(
          title: 'Provider',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: CountExample(),
        )
    );
  }
}
