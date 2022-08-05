// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(onPressed: () {
            
          }, child: const Text('Buyer')),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Seller')),
        ],
      ),
    ));
  }
}
