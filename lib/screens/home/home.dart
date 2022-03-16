import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(20),
            origin: Offset(150, 50),
            child: Image.asset('assets/'),
          )
        ],
      )),
    );
  }
}
