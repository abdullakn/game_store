import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class PopularGames extends StatelessWidget {
  final List<Game> games=Game.generateGame();
  PopularGames({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
        itemBuilder: (context,index)=>Card(
          
          elevation: 5,
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(15),

          ),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(games[index].bgImg,fit: BoxFit.cover,),
            ),
          ),
        ),
         separatorBuilder: (_,index)=>SizedBox(width: 10,),
          itemCount: games.length),
      
    );
  }
}