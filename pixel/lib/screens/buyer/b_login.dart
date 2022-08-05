import 'package:flutter/material.dart';
import 'package:pixel/screens/widgets/header_widget.dart';
import 'package:pixel/screens/widgets/theme_helper.dart';

class BLogin extends StatefulWidget {
  const BLogin({Key? key}) : super(key: key);

  @override
  State<BLogin> createState() => _BLoginState();
}

class _BLoginState extends State<BLogin> {
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
                          onPressed: () {},
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Don\'t have account? Sign Up'),
                      ],
                    ))
              ]),
            )
          ]),
        ));
  }
}
