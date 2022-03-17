import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/models/game.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Game game;
  final double expandedheight;
  final double roundedContainerHeight;

  DetailSliverDelegate(
      {required this.game,
      required this.expandedheight,
      required this.roundedContainerHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    print(shrinkOffset);
    return Stack(
      children: [
        Image.asset(
          game.bgImg,
          width: MediaQuery.of(context).size.width,
          height: expandedheight,
          fit: BoxFit.cover,
        ),
        Positioned(
            child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
        )),
        Positioned(
            top: expandedheight - roundedContainerHeight,
            child: Container(
              height: roundedContainerHeight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
                      alignment: Alignment.center,
                      child: Container(
                        height: 5,
                        width: 60,
                       
                        decoration: BoxDecoration(
                           color: Colors.black,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
            ))
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedheight;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
