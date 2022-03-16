import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome,',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
              Text('What would you like to play',style: TextStyle(color: Colors.white,fontSize: 22),)
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              "assets/images/avatar.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
