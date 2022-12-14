import 'package:flutter/material.dart';
import 'package:pixel/screens/seller/s_home_screen.dart';
import 'package:pixel/screens/seller/s_signup.dart';
import 'package:pixel/screens/widgets/header_widget.dart';
import 'package:pixel/screens/widgets/theme_helper.dart';
import 'package:flutter/gestures.dart';

class SLogin extends StatefulWidget {
  const SLogin({Key? key}) : super(key: key);

  @override
  State<SLogin> createState() => _SLoginState();
}

class _SLoginState extends State<SLogin> {
  final double _headerHeight = 250;
  final Key _formKey = GlobalKey<FormState>();
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
                Text('LOGIN',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 30),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SHomeScreen()),
                            );
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
                                            builder: (context) => SSignup()));
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
