import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                Text(
                  "TLRP",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                if (await canLaunch(discord)) {
                  await launch(discord);
                } else {
                  throw 'Could not launch $discord';
                }
              },
              child: Image.asset(
                "assets/images/avataaars.png",
                height: 55,
              ),          
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

const discord = "https://discord.com/invite/JdbYPMT5EB";
