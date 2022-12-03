import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:shake/shake.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geocoder2/geocoder2.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class ShakeDetected extends StatefulWidget {
  const ShakeDetected({super.key});

  @override
  State<ShakeDetected> createState() => _ShakeDetectedState();
}

class _ShakeDetectedState extends State<ShakeDetected> {

  List<String> receipients=['7995939215'];

  late ShakeDetector detector;

   void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detector = ShakeDetector.autoStart(onPhoneShake: () async {
      LocationPermission permission;
   permission = await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var recipents = <String>['7995939215'];
    List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude
      );
    Placemark place = placemarks[0];
      _sendSMS("Hi, I am at this location", receipients);
    });
    

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    detector.stopListening();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
                      Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             
                              Image.asset(
                                'assets/shake.png',
                                height: 200,
                                width: 200,
                              ),
                              
                            ],
                          ),
                        ),
                       
                        
                      ],
                    ),
                  
          ],
        ),
      )),
    );
  }
}