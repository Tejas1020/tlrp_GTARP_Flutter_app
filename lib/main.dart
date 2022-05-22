import 'package:flutter/material.dart';
import 'package:tlrp_app/details/about_server_card_details.dart';
import 'package:tlrp_app/details/priority_card_details.dart';
import 'package:tlrp_app/details/we_offer_card_details.dart';
import 'package:tlrp_app/pages/home_page.dart';
import 'package:tlrp_app/payment_pages/payment_1000.dart';
import 'package:tlrp_app/payment_pages/payment_1500.dart';
import 'package:tlrp_app/payment_pages/payment_2000.dart';
import 'package:tlrp_app/payment_pages/payment_500.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TLRP_App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        we_offer_card_details.id: (context) => we_offer_card_details(),
        about_server_card_details.id: (context) => about_server_card_details(),
        priority_card_details.id: (context) => priority_card_details(),
        payment_500.id: (context) => payment_500(),
        payment_1000.id: (context) => payment_1000(),
        payment_1500.id: (context) => payment_1500(),
        payment_2000.id: (context) => payment_2000(),
      },
    );
  }
}
