import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pixel/screens/authservices.dart';
import 'package:pixel/screens/buyer/b_login.dart';
import 'package:pixel/screens/widgets/header_widget.dart';
import 'package:pixel/screens/widgets/theme_helper.dart';

class BSignup extends StatefulWidget {
  const BSignup({Key? key}) : super(key: key);

  @override
  State<BSignup> createState() => _BSignupState();
}

class _BSignupState extends State<BSignup> {
  final Key _formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 150,
                child: HeaderWidget(100, true, Icons.person_add_alt_1_rounded),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            GestureDetector(
                                child: Stack(children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(width: 5, color: Colors.white),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                              ),
                              // Container(
                              //   padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                              //   child: Icon(
                              //     Icons.add_circle,
                              //     color: Color.fromARGB(255, 0, 0, 0),
                              //     size: 25.0,
                              //   ),
                              // ),
                            ])),
                            Text(
                              'REGISTER',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: fullnameController,
                                decoration: ThemeHelper().textInputDecoration(
                                    'Full Name', 'Enter your full name'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: emailController,
                                decoration: ThemeHelper().textInputDecoration(
                                    'Email', 'Enter your email'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: phoneController,
                                decoration: ThemeHelper().textInputDecoration(
                                    'Phone', 'Enter your phone number'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: usernameController,
                                decoration: ThemeHelper().textInputDecoration(
                                    'User Name', 'Enter your user name'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                controller: passwordController,
                                decoration: ThemeHelper().textInputDecoration(
                                    'Password', 'Enter your password'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                child: ElevatedButton(
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text('Register'),
                              ),
                              onPressed: () {
                                print("i am, here");
                                AuthService()
                                    .addUser(
                                        fullnameController.text,
                                        emailController.text,
                                        phoneController.text,
                                        usernameController.text,
                                        passwordController.text)
                                    .then((val) => {
                                          if (val.data['success'])
                                            {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BLogin()))
                                            }
                                          else
                                            {
                                              print(val.data.msg)
                                            }
                                        });
                              },
                            )),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
