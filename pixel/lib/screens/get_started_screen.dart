// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pixel/screens/seller/s_login.dart';
import 'package:pixel/screens/buyer/b_login.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text('Buyer'),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BLogin()));},
                    )), 
          Container(
                    child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text('Seller'),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SLogin()));
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
    ));
  }
}
