import 'package:flutter/material.dart';
import 'Screens/display.dart';
import 'Screens/displayu.dart';
import 'Screens/home.dart';
import 'Screens/type.dart';
import 'Screens/used.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/home': (context) => const HomeScreen(),
        '/type': (context) =>  const TypeScreen(),
        '/used': (context) =>  const UsedScreen(),
        '/display': (context) =>  const DisplayScreen(),
        '/displayu': (context) =>  const DisplayuScreen(),
      }
      ,
      initialRoute: '/home',

    );
  }
}