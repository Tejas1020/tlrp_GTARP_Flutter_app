import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class payment_1000 extends StatelessWidget {
  const payment_1000({Key? key}) : super(key: key);
  static const String id = "payment_1000";

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
              "Purchase Tier 2",
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
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Rs.₹1000/-",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/1000.png",
                    scale: 1.5,
                  ),
                ),
              ),
              Text(
                "Scan QR in any UPI app",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "After successfull payment take screenshot of your transaction send on TLRP official discord in Support ticket.",
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: () async {
                  if (await canLaunch(discord)) {
                    await launch(discord);
                  } else {
                    throw 'Could not launch $discord';
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.asset(
                    "assets/images/discord.png",
                    fit: BoxFit.cover,
                    height: 55,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const discord = "https://discord.com/invite/JdbYPMT5EB";
