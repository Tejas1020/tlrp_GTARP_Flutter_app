import 'package:flutter/material.dart';
import 'package:tlrp_app/details/priority_card_details.dart';

class priority_card extends StatefulWidget {
  const priority_card({Key? key}) : super(key: key);

  @override
  State<priority_card> createState() => _priority_cardState();
}

class _priority_cardState extends State<priority_card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, priority_card_details.id),
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
                      "Priority",
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
                  "Server Whitelist Priority",
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
                    tag: "priority_card",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/gta3.png",
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
