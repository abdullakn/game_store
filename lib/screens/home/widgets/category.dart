import 'package:flutter/material.dart';

class CategoryGame extends StatelessWidget {
  CategoryGame({Key? key}) : super(key: key);
  final category_list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': Colors.red,
      'title': 'Arcade'
    },
     {
      'icon': Icons.sports_football_outlined,
      'color': Colors.red,
      'title': 'Football'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Colors.blue,
      'title': 'Racing'
    },
    {'icon': Icons.casino_outlined, 'color': Colors.yellow, 'title': 'Casino'},
    {
      'icon': Icons.sports_cricket_outlined,
      'color': Colors.green,
      'title': 'Cricket'
    },
      {
      'icon': Icons.sports_hockey_outlined,
      'color': Colors.green,
      'title': 'Hockey'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) =>
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: category_list[index]['color'] as Color,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(category_list[index]['icon'] as IconData,color: Colors.white,size: 44,),
                        ),
                        SizedBox(height: 10,),
                        Text(category_list[index]['title'] as String,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black.withOpacity(0.7)),)
                      ],
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 33,
                    ),
                itemCount: category_list.length),
          ),
          _buildHeading('Popular Game')
        ],
      ),
    );
  }

  Widget _buildHeading(String text){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

    );


  }
}
