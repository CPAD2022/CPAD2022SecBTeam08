import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shakti/widgets/CustomAppBar.dart';
import 'package:shakti/widgets/CustomCarousel.dart';
import 'package:shakti/widgets/emergency.dart';
import 'package:shakti/widgets/LiveSafe.dart';
import 'package:shakti/widgets/safehome/SafeHome.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({super.key});
  int qindex=3;

  getQuoteIndex(){
    Random random=Random();
    setState(() {
      qindex=random.nextInt(6);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getQuoteIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar
              (
                onTap: (){
                  getQuoteIndex();
                },
                quoteIndex:qindex,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomCarousel(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Emergency",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Emergency(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Explore LiveSafe",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    LiveSafe(),
                    SafeHome(),
                   ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
