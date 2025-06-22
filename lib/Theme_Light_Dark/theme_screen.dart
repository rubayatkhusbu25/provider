import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_app/Theme_Light_Dark/theme_changer_provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    
    final ThemeChangerProvider themeChangerProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Provider"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Theme"),
            value: ThemeMode.light,
            groupValue: themeChangerProvider.themeMode,
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("Dark Theme"),
            value: ThemeMode.dark,
            groupValue: themeChangerProvider.themeMode,
            onChanged: themeChangerProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Theme"),
            value: ThemeMode.system,
            groupValue: themeChangerProvider.themeMode,
            onChanged: themeChangerProvider.setTheme,
          )
        ],
      ),
    );
  }
}
