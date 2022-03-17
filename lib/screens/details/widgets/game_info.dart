import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';
import 'package:game_store_app/screens/details/widgets/game_gallery.dart';
import 'package:game_store_app/screens/details/widgets/game_info_header.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo({required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameInfoHeader(game: game),
          GameGallery(game: game)
        ],
      ),
      
    );
  }
}