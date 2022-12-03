

import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:geocoder2/geocoder2.dart';
import 'package:geocoding/geocoding.dart';

import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class SafeHome extends StatelessWidget {
  static void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}
static Function sendMessage= () async {
   LocationPermission permission;
   permission = await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var recipents = <String>['7995939215'];
    List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude
      );
    Placemark place = placemarks[0];
    _sendSMS("Hi, I am here ${place.name}, ${place.street},${place.subLocality},${place.locality}, ${place.country},${place.postalCode}", recipents);
  };

  
  
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => sendMessage(),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  ListTile(
                    title: Text("Send Location"),
                    subtitle: Text("Share Location"),
                  ),
                ],
              )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/route.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}