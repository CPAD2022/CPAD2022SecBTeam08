import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shakti/db/shared_preferences.dart';
import 'package:shakti/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shakti/utils/constants.dart';
import 'package:shakti/widgets/HomePage.dart';
import 'package:shakti/widgets/WelcomePage.dart';
import 'package:shakti/widgets/login_screen.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await MySharedPrefference.init();
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
        scaffoldBackgroundColor: Color.fromARGB(255, 198, 156, 241),
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: MySharedPrefference.getUserEmail(),
        builder:  (BuildContext context, AsyncSnapshot snapshot){
          if (snapshot.data == "") {
            return HomeScreen();
          }
          if (snapshot.data != null) {
            return HomeScreen();
          }
          return progressIndicator(context);
        })
    );
  }
}