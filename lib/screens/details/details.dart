import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';
import 'package:game_store_app/screens/details/widgets/details_sliver_delegate.dart';
import 'package:game_store_app/screens/details/widgets/game_info.dart';

class DetailPage extends StatelessWidget {
  final Game game;
  const DetailPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(delegate: DetailSliverDelegate(game: game, expandedheight: 360, roundedContainerHeight: 30)),
          SliverToBoxAdapter(
            child: GameInfo(game: game),
          )
        ],
      )),
    );
  }
}