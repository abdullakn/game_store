import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class GameInfoHeader extends StatelessWidget {
  final Game game;
  const GameInfoHeader({required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Image.asset(
            game.icon,
            width: 80,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                game.type,
                style: TextStyle(color: Colors.grey.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [ 
                  _buildIconText(Icons.star, game.score.toString(),Colors.amber),
                  SizedBox(width: 10,),
                   _buildIconText(Icons.download_outlined,"${game.downloads} k",Colors.red),
                  ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text,Color color) {
    return Row(
      children: [
        Icon(icon,size: 20,color: color,),
        SizedBox(width: 5,),
        Text(text)
      ],
    );
  }
}
