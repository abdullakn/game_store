import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';
import 'package:game_store_app/screens/home/widgets/category.dart';
import 'package:game_store_app/screens/home/widgets/header.dart';
import 'package:game_store_app/screens/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
                  children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              top: 200,
              right: 0,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(150, 50),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [Header(), Seacrh(), CategoryGame()],
            )
                  ],
                ),
          )),
    );
  }
}
