import 'package:flutter/material.dart';
import 'package:shakti/utils/constants.dart';

import '../ShakeDetector.dart';


class ShakePhoneCard extends StatelessWidget {
 
 const ShakePhoneCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              goTo(context, ShakeDetected());
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 50,
                width: 50,
                child: Center(
                  child: Image.asset(
                    'assets/hand.png',
                    height: 32,
                  ),
                ),
              ),
            ),
          ),
          Text('Shake Phone')
        ],
      ),
    );
  }
}