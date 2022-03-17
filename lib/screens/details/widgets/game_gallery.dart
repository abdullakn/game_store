import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class GameGallery extends StatelessWidget {
  final Game game;
  const GameGallery({required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
      child: ListView.separated(
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index)=>SizedBox(
          width: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(game.imgs[index],fit: BoxFit.cover,),
          ),
        ),
         separatorBuilder: (_,index)=>SizedBox(width: 10,),
          itemCount: game.imgs.length),

      
    );
  }
}