import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shakti/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "DASHBOARD",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800,
                                      color: primaryColor,
                                    ),
                                  ),
                                ])),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 247, 247, 247),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ))),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 247, 247, 247),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                             
                                            ],
                                          )
                                        ],
                                      ))),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 247, 247, 247),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                             
                                            ],
                                          )
                                        ],
                                      ))),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 247, 247, 247),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              
                                            ],
                                          )
                                        ],
                                      ))),
                              Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  child: SizedBox(
                                      width: 180,
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    elevation: 3,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/police-badge.png',
                                                          height: 32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                             
                                            ],
                                          )
                                        ],
                                      ))),
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
