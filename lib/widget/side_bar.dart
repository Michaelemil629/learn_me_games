import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';

class SideBar extends StatelessWidget {
  const SideBar();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  icon: Icon(Icons.settings_outlined),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: black,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_outlined,
                color: black,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.leaderboard_outlined,
                color: black,
              ),
              title: const Text('Rank'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: black,
              ),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.info_outlined,
                color: black,
              ),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
