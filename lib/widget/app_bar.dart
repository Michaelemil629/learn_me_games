import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';

class TopBar extends StatelessWidget {
  final String _title;
  TopBar(this._title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        '${this._title}',
        style: TextStyle(
          color: black,
          fontSize: fontSize20,
        ),
      ),
      centerTitle: true,
      backgroundColor: lightBlue, // make back ground transparent
      elevation: 0.0,
      // used for shadow strength
      //change the color of the drawer icon
      iconTheme: IconThemeData(
        color: black,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
          ),
        ),
      ],
    );
  }
}
