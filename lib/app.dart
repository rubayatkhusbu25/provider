import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'number_list.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberList()),
      ],
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: Home(),
      ),
    );
  }
}
