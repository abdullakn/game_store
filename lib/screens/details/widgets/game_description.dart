import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';
import 'package:game_store_app/models/game.dart';
import 'package:readmore/readmore.dart';

class GameDescription extends StatelessWidget {
  final Game game;
  const GameDescription({required this.game});

  @override
  Widget build(BuildContext context) {
    print(double.maxFinite);
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ReadMoreText(
       game.desc,
        trimLines: 2,
        colorClickableText: kPrimaryColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        style: TextStyle(color: Colors.grey.withOpacity(0.8),height: 1.5),
        // moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.grey.withOpacity(0.5)),
      ),
    );
  }
}
