import 'package:flutter/material.dart';
import 'package:tlrp_app/details/gradient_button.dart';
import 'package:tlrp_app/payment_pages/payment_1000.dart';
import 'package:tlrp_app/payment_pages/payment_1500.dart';
import 'package:tlrp_app/payment_pages/payment_2000.dart';
import 'package:tlrp_app/payment_pages/payment_500.dart';

class tier_option_card extends StatelessWidget {
  final int tier_number;
  final int amount;
  final int priority_level;
  final int interview_slot;
  final Function() payment_page_route;
  const tier_option_card(
      {Key? key,
      required this.tier_number,
      required this.amount,
      required this.priority_level,
      required this.interview_slot,
      required this.payment_page_route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width / 1.3,
      margin: EdgeInsets.only(top: 15, right: 25, bottom: 25),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromARGB(79, 255, 255, 255),
        // color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 15),
            color: Colors.black.withOpacity(.15),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
           "Tier $tier_number",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "₹$amount",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Whitelist Priority level $priority_level",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Direct Interview Slot $interview_slot",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Skip Form Filling",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Valid for 3Re-interview",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              GradientButtonFb1(
                text: "Purchase",
                onPressed: payment_page_route,
              )
            ],
          ),
        ],
      ),
    );
  }
}
