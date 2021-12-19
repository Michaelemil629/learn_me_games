import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/app_bar.dart';
import 'package:learn_me_game/widget/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar(
          'Signin',
        ),
      ),
      body: Padding(
        padding: paddingW,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/splash.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: textInputDecoration.copyWith(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.person_outlined,
                  color: black,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: true,
              decoration: textInputDecoration.copyWith(
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.password,
                  color: black,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: fontWeight400,
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
