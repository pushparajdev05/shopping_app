import 'package:flutter/material.dart';
import "home_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      theme: ThemeData(
        useMaterial3:true ,
        fontFamily: "lato",
        textTheme:const TextTheme(titleMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 251, 255, 0),
        primary: Color.fromARGB(255, 246, 255, 67)),
        inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              color:Color.fromARGB(255, 79, 79, 79),
              fontSize: 20,
              fontWeight: FontWeight.bold
            )
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner:false,
    );
  }
}
