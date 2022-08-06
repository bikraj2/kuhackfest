// ignore_for_file: deprecated_member_use

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pixel/screens/authservices.dart';
import 'package:pixel/screens/seller/s_login.dart';
import 'package:pixel/screens/buyer/b_login.dart';
import 'package:pixel/screens/widgets/header_widget.dart';


class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double _headerHeight=100;
    return Scaffold(
        body: Center(
            child: Column(
      children: [
         SizedBox(
                height: _headerHeight,
                child: HeaderWidget(_headerHeight, true, Icons.login_rounded)),
     
        Image(
              image: AssetImage('assets/images/logo.png'),
              height:300,
              width: 300,
            ),
            
            Text('Get started as',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
                    )),
            SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Container(
                child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text('Buyer'),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BLogin()));
              },
            )),
            Container(
                child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text('Seller'),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SLogin()));
              },
            )),

            // ElevatedButton(
            //   child: const Text('Buyer'),
            //   onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BLogin()))},),
            // const SizedBox(
            //   width: 20,
            // ),
            // ElevatedButton( child: const Text('Seller'),onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SLogin()))}),
          ],
        ),
      ],
    )));
  }
}
