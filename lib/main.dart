import 'package:flutter/material.dart';
import 'package:shakti/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}