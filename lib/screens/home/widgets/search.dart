import 'package:flutter/material.dart';
import 'package:game_store_app/constants/colors.dart';

class Seacrh extends StatelessWidget {
  const Seacrh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Stack(
        children: [
          TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              fillColor: Color(0xFFF6F8FF),
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: kPrimaryColor,
                size: 30,
              ),
              hintText: 'Search game',
              hintStyle:
                  TextStyle(fontSize: 14, color: Colors.grey.withOpacity(0.7)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )),
            ),
          ),
          Positioned(
            bottom: 6,
            right: 12,
              child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
            child: Icon(
              Icons.mic_outlined,
              color: Colors.white,
              size: 25,
            ),
          ))
        ],
      ),
    );
  }
}
