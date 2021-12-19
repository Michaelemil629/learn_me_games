import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/app_bar.dart';
import 'package:learn_me_game/widget/constant.dart';
import 'package:learn_me_game/widget/side_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    final List<String> options = ['Male', 'Female'];
    String temp = 'Male';
    return Scaffold(
      drawer: SideBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: TopBar(
          'Signup',
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
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                      controller: nameController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Name',
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your name';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      controller: EmailController,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your Email';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.password,
                          color: black,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            DropdownButtonFormField<String>(
              value: temp,
              decoration: textInputDecoration,
              items: options.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text('$e'),
                );
              }).toList(),
              // if the onChanged callback is null or the list of items is null
              // then the dropdown button will be disabled
              onChanged: (val) => setState(() => temp = val as String),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Signup',
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('processing data')),
                    );
                  }
                  print(nameController.text);
                  print(EmailController.text);
                  print(passwordController.text);
                },
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
