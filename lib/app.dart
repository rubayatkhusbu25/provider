import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'e_commerce_provider/box_list.dart';
import 'e_commerce_provider/e_home.dart';
import 'e_commerce_provider/multiple_provider/opacity_changer.dart';
import 'e_commerce_provider/multiple_provider/opacity_changer_provider.dart';


class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> BoxList()),
        ChangeNotifierProvider(create: (context)=> OpacityChangerProvider())
      ],
      child: MaterialApp(
        title: 'Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: OpacityChanger(),
      ),
    );
  }
}
