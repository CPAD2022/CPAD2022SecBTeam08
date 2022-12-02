import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:shakti/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> receipients=['7995939215'];
class SOS extends StatelessWidget {
  //const SOS({super.key});
  _callNumber(String number) async {
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 20,
                    shape: const CircleBorder(),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => _callNumber('+917995939215'),
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                  'assets/phone.png',
                                  height: 100,
                                  width: 100,
                                ),
                                Text(
                                  "CALL",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800,
                                      color: primaryColor,
                                      ),
                                ),
                    
                          ],
                        )
                      ),
                    )
                    ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 20,
                    shape: const CircleBorder(),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => _sendSMS("Hi, I am at this location", receipients),
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                                  'assets/chat.png',
                                  height: 100,
                                  width: 100,
                                ),
                                Text(
                                  "SMS",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w800,
                                      color: primaryColor,
                                      ),
                                ),
                    
                          ],
                        )
                      ),
                    )),
              ],
              ),
            )
          ],
          
        )),
    );
  }
}