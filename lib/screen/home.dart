import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/app_bar.dart';
import 'package:learn_me_game/widget/category_card.dart';
import 'package:learn_me_game/widget/constant.dart';
import 'package:learn_me_game/widget/search_bar.dart';
import 'package:learn_me_game/widget/side_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar(
          'Categories',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: paddingW,
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: lightBlue,
                      backgroundImage: AssetImage(
                        'assets/person.png',
                      ),
                      radius: 40.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Welcome ',
                              style: TextStyle(
                                fontSize: fontSize20,
                              ),
                            ),
                            Text(
                              'guest',
                              style: TextStyle(
                                fontSize: fontSize20,
                                color: Colors.pink[500],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'level ',
                              style: TextStyle(
                                fontSize: fontSize14,
                              ),
                            ),
                            Text(
                              '01',
                              style: TextStyle(
                                fontSize: fontSize14,
                                color: Colors.pink[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SearchBar(),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: [
                      CategoryCard('splash.png', 'Puzzle', Colors.pink),
                      CategoryCard('splash.png', 'Matching', Colors.indigo),
                      CategoryCard(
                          'splash.png', 'Fruits Related', Colors.amber),
                      CategoryCard('splash.png', 'Mathematical', Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
