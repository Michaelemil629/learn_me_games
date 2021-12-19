import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Learnme.COM",
                    style: TextStyle(
                      fontSize: fontSize12,
                      fontWeight: fontWeight400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "WHERE KIDS LOVE LEARNING",
                    style: TextStyle(
                      fontSize: fontSize12,
                    ),
                  ),
                  Text(
                    "Distant Learning & Home \nSchooling Made Easy",
                    style: TextStyle(
                      fontSize: fontSize26,
                      fontWeight: fontWeight700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Book Filtered Top Rated Professional \nTutors from the comfort \nOf your home in just a few clicks",
                    style: TextStyle(
                      fontSize: fontSize14,
                      fontWeight: fontWeight400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 15,
                            color: Colors.black.withOpacity(0.1),
                          )),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: amber,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
