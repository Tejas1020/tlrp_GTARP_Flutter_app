import 'package:flutter/material.dart';
import 'package:tlrp_app/details/about_server_card_details.dart';

class about_server_card extends StatefulWidget {
  const about_server_card({Key? key}) : super(key: key);

  @override
  State<about_server_card> createState() => _about_server_cardState();
}

class _about_server_cardState extends State<about_server_card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushNamed(context, about_server_card_details.id);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.amber,
            margin: EdgeInsets.only(top: 15, right: 25, bottom: 25),
            height: 350,
            width: MediaQuery.of(context).size.width / 1.3,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(111, 255, 255, 255),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "About Server",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "THE LEGENDS ROLEPLAY",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Hero(
                    tag: "about_server",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/gtarp2.jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
