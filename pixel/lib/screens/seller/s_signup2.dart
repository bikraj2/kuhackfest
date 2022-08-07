import 'package:flutter/material.dart';
import 'package:pixel/screens/widgets/header_widget.dart';
import 'package:pixel/screens/widgets/theme_helper.dart';

class SSignup2 extends StatefulWidget {
  const SSignup2({Key? key}) : super(key: key);

  @override
  State<SSignup2> createState() => _SSignup2State();
}

class _SSignup2State extends State<SSignup2> {
  final Key _formKey = GlobalKey<FormState>();
  
  

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
                            Text('REGISTER',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 10,
                            ),
                            // Container(
                            //   child: DropdownButton(
                            //     onChanged: (value) {
                            //       initialtype = value.toString();
                            //       setState(() {
                                    
                            //       });
                            //     } ,
                            //     value: initialtype,
                            //     items: identitytype.map((items){
                            //       return DropdownMenuItem(
                            //         value: items,
                            //         child: Text(items));
                            //     }).toList(), 
                                
                            //   ),
                            // ),
                            Container(
                              child: TextFormField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'Citizenship number', 'Enter your citizenship number'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'Issue Date', 'Enter your Citizenship issue date'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'Issue District', 'Enter your Citizenship issue district'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                decoration: ThemeHelper().textInputDecoration(
                                    'DOB', 'Enter your date of birth'),
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
                                onPressed: () {},
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
