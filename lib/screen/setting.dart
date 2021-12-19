import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/app_bar.dart';
import 'package:learn_me_game/widget/constant.dart';
import 'package:learn_me_game/widget/side_bar.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar(
          'Setting',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: paddingW,
          child: ListView(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: fontSize20,
                    fontWeight: fontWeight400,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: black,
                  alignment: Alignment.centerLeft,
                ),
              ),
              Divider(
                color: black45,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: fontSize20,
                    fontWeight: fontWeight400,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: black,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
