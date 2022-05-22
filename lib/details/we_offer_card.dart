import 'package:flutter/material.dart';
import 'package:tlrp_app/details/we_offer_card_details.dart';

class we_offer_card extends StatefulWidget {
  const we_offer_card({Key? key}) : super(key: key);

  @override
  State<we_offer_card> createState() => _we_offer_cardState();
}

class _we_offer_cardState extends State<we_offer_card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, we_offer_card_details.id);
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
                      "We’re offering",
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
                  "Creative RolePlay Server",
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
                    tag: "we_offer_card",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/gatrp.jpg",
                        fit: BoxFit.cover,
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
