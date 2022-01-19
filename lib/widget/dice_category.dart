import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';
//import 'package:learn_me_game/screen/Relatedgame.dart';

class CategoryCard3 extends StatelessWidget {
  final String image;
  final String name;
  final dynamic color;
  CategoryCard3(this.image, this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/dicegame');
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/${this.image}'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: black45,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  '${this.name}',
                  style: TextStyle(
                    color: white,
                    fontSize: fontSize20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
