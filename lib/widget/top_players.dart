import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';

class TopPlayers extends StatelessWidget {
  const TopPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.0,
        ),
        title: Text('brew.name'),
        //subtitle: Text('Takes ${'brew.sugars'} sugar(s)'),
      ),
    );
  }
}
