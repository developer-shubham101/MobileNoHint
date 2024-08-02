import 'package:flutter/material.dart';
import 'package:mobile_no_hint/mobile_no_hint.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MobileNoHint mobileNumber = MobileNoHint();
  MobileNumber mobileNumberObject = MobileNumber();

  @override
  void dispose() {
    mobileNumber.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => mobileNumber.mobileNumber());
    mobileNumber.getMobileNumberStream.listen((MobileNumber? event) {
      if (event?.states == PhoneNumberStates.PhoneNumberSelected) {
        setState(() {
          mobileNumberObject = event!;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mobile Number Plugin'),
        ),
        body: Center(
          child: Text(
              'Mobile Number: ${mobileNumberObject.phoneNumber}\n Country Code: ${mobileNumberObject.countryCode}'),
        ),
      ),
    );
  }
}
