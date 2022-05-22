import 'package:flutter/material.dart';
import 'package:tlrp_app/pages/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient : LinearGradient(
          begin:  Alignment.topLeft,
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
        body: Body(),            
      ),
    );
  }
}