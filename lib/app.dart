import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Theme_Light_Dark/theme_changer_provider.dart';
import 'Theme_Light_Dark/theme_screen.dart';
import 'e_commerce_provider/box_list.dart';
import 'e_commerce_provider/e_home.dart';
import 'e_commerce_provider/multiple_provider/opacity_changer.dart';
import 'e_commerce_provider/multiple_provider/opacity_changer_provider.dart';
import 'favourite_app/fav_provider.dart';
import 'favourite_app/favourite_screen1.dart';


class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> BoxList()),
        ChangeNotifierProvider(create: (context)=> OpacityChangerProvider()),
        ChangeNotifierProvider(create: (context)=>FavProvider()),
        ChangeNotifierProvider(create: (context)=>ThemeChangerProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final ThemeChangerProvider  themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Provider',
            debugShowCheckedModeBanner: false,
            themeMode: themeChangerProvider.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: AppBarTheme(
                color: Colors.amberAccent,
                titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)
              )
            ),
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(
                color: Colors.teal,
                titleTextStyle: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22
                )
              ),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: ThemeScreen(),
          );
        }
      ),
    );
  }
}
