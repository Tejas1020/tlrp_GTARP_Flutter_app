import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tlrp_app/details/tier_options.dart';
import 'package:tlrp_app/payment_pages/payment_1000.dart';
import 'package:tlrp_app/payment_pages/payment_2000.dart';
import 'package:tlrp_app/payment_pages/payment_500.dart';

class priority_card_details extends StatefulWidget {
  const priority_card_details({Key? key}) : super(key: key);
  static const String id = "priority_card_details";

  @override
  State<priority_card_details> createState() => _priority_card_detailsState();
}

class _priority_card_detailsState extends State<priority_card_details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.orange,
            Colors.white,
            Colors.green,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Server Whitelist Priority ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: "priority_card",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/images/gta3.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "Checkout Server Whitelist Priority Pack",
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            speed: Duration(milliseconds: 50),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,                    
                    wordSpacing: 0.2
                  ),
                ),
                Center(
                  child: Text(
                    "Select Your Tier",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tier_option_card(
                        tier_number: 1,
                        amount: 500,
                        priority_level: 4,
                        interview_slot: 4,
                        payment_page_route: () =>
                            Navigator.pushNamed(context, payment_500.id),
                      ),
                      tier_option_card(
                        tier_number: 2,
                        amount: 1000,
                        priority_level: 3,
                        interview_slot: 3,
                        payment_page_route: () =>
                            Navigator.pushNamed(context, payment_1000.id),
                      ),
                      tier_option_card(
                        tier_number: 3,
                        amount: 1500,
                        priority_level: 2,
                        interview_slot: 2,
                        payment_page_route: () =>
                            Navigator.pushNamed(context, payment_1000.id),
                      ),
                      tier_option_card(
                        tier_number: 4,
                        amount: 2000,
                        priority_level: 1,
                        interview_slot: 1,
                        payment_page_route: () =>
                            Navigator.pushNamed(context, payment_2000.id),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String description =
    "This packs will only skip the form filling process and directly grant you the whitelist interview access.\n"
    "The Supreme pack will give you the interview process directly no need to wait or fill the form.\n"
    "Before buing pack make sure to read all the details.\n"
    "Make sure if you have done payment to open a ticket and send the screenshot there only to verify it’s you only.\n"
    "And also make sure to write you real name and your discord name on the payment method will payment it makes things easy for us to verify.\n"
    "Note – if you got fail in the interview you will be able to give it again and will get reinter view tag with priority\n"
    "Happy RPing\n"
    "Regard’s TLRP\n";


