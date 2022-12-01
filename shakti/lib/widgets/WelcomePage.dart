import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shakti/db/shared_preferences.dart';
import 'package:shakti/home_screen.dart';
import 'package:shakti/widgets/components/primaryButton.dart';
import 'package:shakti/widgets/components/secondaryButton.dart';
import 'package:shakti/widgets/components/custome_textfield.dart';

import 'package:shakti/utils/constants.dart';
import 'package:shakti/widgets/login_screen.dart';
import 'package:shakti/widgets/register_new_user.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            isLoading
                ? progressIndicator(context)
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             
                              Image.asset(
                                'assets/logo.png',
                                height: 200,
                                width: 200,
                              ),
                              Text(
                                "SHAKTI",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800,
                                    color: null,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = primaryColor
                                      ..strokeWidth = 2),
                              ),
                            ],
                          ),
                        ),
                       
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              SecondaryButton(
                                  title: 'Login', onPressed: () {
                                    goTo(context, LoginScreen());
                                  }),
                              SecondaryButton(
                                  title: 'Sign Up', onPressed: () {
                                    goTo(context, RegisterNewUser());
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      )),
    );
  }
  
}