import 'package:flutter/material.dart';
import 'package:learn_me_game/screen/edit_profile.dart';
import 'package:learn_me_game/screen/home.dart';
import 'package:learn_me_game/screen/setting.dart';
import 'package:learn_me_game/screen/sign_in.dart';
import 'package:learn_me_game/screen/sign_up.dart';
import 'package:learn_me_game/screen/splash_screen.dart';
import 'package:learn_me_game/widget/constant.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Me',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/setting': (context) => Setting(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/profile': (context) => EditProfile(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: lightBlue,
        fontFamily: fontFamily,
      ),
    );
  }
}
