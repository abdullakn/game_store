import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';
import 'package:game_store_app/models/game.dart';

class NewestGame extends StatelessWidget {
  final List<Game> games=Game.generateGame();
  NewestGame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(25),
      child: Column(
        children: games.map((e) => Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
           color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(e.icon,width: 60,),
              ),
              SizedBox(width: 10,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                   Text(e.type,style: TextStyle(fontSize: 16,color: Colors.grey.withOpacity(0.5)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStar(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15),
                          

                        ),
                        child: Text('Install',style: TextStyle(color: Colors.white),),
                      )
                      
                    ],

                  )
                 
                ],
              ))
            ],
          ),

        )).toList(),
      ),
      

      
    );
  }

  Widget _buildStar(){
    final List<Color> color=[
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.2)
    ];

    return Row(
      children: color.map((e) => Icon(Icons.star,color: e,size: 15,)).toList(),
    );

  }
}