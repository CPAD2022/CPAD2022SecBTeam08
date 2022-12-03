import 'package:flutter/material.dart';
import 'package:shakti/utils/constants.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';



class BookTaxi extends StatelessWidget {
 
 const BookTaxi({Key? key}) : super(key: key);

 static Function openOla = () async {
   LocationPermission permission;
   permission = await Geolocator.requestPermission();
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final url = 'http://book.olacabs.com/?lat=' +
        position.latitude.toString() +
        '&lng=' +
        position.longitude.toString() +
        '&category=compact&utm_source=12343&drop_lat=28682640&drop_lng=77.370486&dsw=yes';

    if (!await launchUrl(Uri.parse(url),
                mode: LaunchMode.externalApplication)) {
              throw 'Could not launch ';
            }
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              openOla();
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
                    'assets/taxi.png',
                    height: 32,
                  ),
                ),
              ),
            ),
          ),
          Text('Book taxi')
        ],
      ),
    );
  }
}