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
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
         

            // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10),
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey.withOpacity(0.3),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            _buildItem('Application', Icons.more_horiz_outlined),
            _buildItem('Film', Icons.play_arrow_rounded),
            _buildItem('Book', Icons.auto_stories_rounded)
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(String text,IconData icon){
    return BottomNavigationBarItem(label: text,icon: Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(5),
      decoration:BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),


      ),
      child: Icon(icon,size: 30,color: Colors.grey,),
    ));
  }
}
