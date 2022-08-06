import 'package:flutter/material.dart';
import 'package:pixel/screens/buyer/b_home_screen.dart';
import 'package:pixel/screens/buyer/b_signup.dart';
import 'package:pixel/screens/widgets/header_widget.dart';
import 'package:pixel/screens/widgets/theme_helper.dart';
import 'package:flutter/gestures.dart';
import 'b_profile.dart';
// import 'package:dio/dio.dart';
// Future<bool> login(String username,String password) async {
//   try {
//     var response = await Dio().post("",data: {
//     "username":,
//     "password":,
//     });
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

class BLogin extends StatefulWidget {
  const BLogin({Key? key}) : super(key: key);

  @override
  State<BLogin> createState() => _BLoginState();
}

class _BLoginState extends State<BLogin> {
  final double _headerHeight = 250;
  final Key _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                height: _headerHeight,
                child: HeaderWidget(_headerHeight, true, Icons.login_rounded)),
            SafeArea(
              child: Column(children: [
                const Text('LOGIN',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 30),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextField(
                          decoration: ThemeHelper().textInputDecoration(
                              'UserName', 'Enter your username'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: ThemeHelper().textInputDecoration(
                              'Password', 'Enter your password'),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Text('Forgot password?'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            child: ElevatedButton(
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                            child: Text('Login'),
                          ),
                          onPressed: () {
                            // login(username, password).then((value) =>true)
                            // {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BHomeScreen()),
                            );
                            // };
                          },
                        )),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "Don\'t have an account? "),
                              TextSpan(
                                text: 'Create',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BSignup()));
                                  },
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]))),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ))
              ]),
            )
          ]),
        ));
  }
}
