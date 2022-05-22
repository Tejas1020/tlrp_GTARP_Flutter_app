import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class we_offer_card_details extends StatelessWidget {
  const we_offer_card_details({Key? key}) : super(key: key);
  static const String id = "we_offer_card_details";
  

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
              "Creative RolePlay Server",
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "we_offer_card",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/images/gatrp.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "We're Offering",
                        textStyle: TextStyle(                        
                          fontSize: 25,
                          color: Colors.black,                    
                        ),
                        speed: Duration(milliseconds: 50),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),             
              Text(
                "Whitelisted Jobs",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Text(
                "Multiple whitelisted jobs available.",
                style: TextStyle(               
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
               Text(
                "Non Whitelisted Jobs",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
               Text(
                "Multiple Non whitelisted jobs available.",
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
                SizedBox(
                height: 15,
              ),
               Text(
                "Streamer Friendly",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
               Text(
                "Streamer and family friendly server..",
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
                SizedBox(
                height: 15,
              ),
               Text(
                "Custom Cars",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
               Text(
                "Custom cars available in server.",
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
                SizedBox(
                height: 15,
              ),
               Text(
                "House or Mansion",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
               Text(
                "House or Mansion available in server.",
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
                SizedBox(
                height: 15,
              ),
               Text(
                "Supportive Team",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
               Text(
                "24*7 active staff available.",
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
                SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
