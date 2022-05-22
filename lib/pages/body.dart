import 'package:flutter/material.dart';
import 'package:tlrp_app/details/priority_card.dart';
import 'package:tlrp_app/details/we_offer_card.dart';
import 'package:tlrp_app/details/about_server_card.dart';
import 'package:tlrp_app/details/header.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Header(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        we_offer_card(),
                        about_server_card(),
                        priority_card(),
                      ],
                    ),
                  ),
                  Text(
                    "Join Us On",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
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
                      GestureDetector(
                        onTap: () async {
                          if (await canLaunch(instagram)) {
                            await launch(instagram);
                          } else {
                            throw ' Could not launch $instagram';
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            "assets/images/instagram.png",
                            fit: BoxFit.cover,
                            height: 55,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (await canLaunch(youtube)) {
                            await launch(youtube);
                          } else {
                            throw 'Could not launch $youtube';
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            "assets/images/youtube.png",
                            fit: BoxFit.cover,
                            height: 55,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Copyright © 2022-2023 \n Credits Reserved to Shreeman Legend & TLRP \n App Created by Tejas D. Dashpute")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const discord = "https://discord.com/invite/JdbYPMT5EB";
const youtube = "https://www.youtube.com/channel/UCiKcPo4ya9vc0iqPFnlajzQ";
const instagram = "https://www.instagram.com/tlrp_official2022/";
