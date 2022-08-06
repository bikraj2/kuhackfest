import 'package:flutter/material.dart';
class SProduct extends StatefulWidget {
  const SProduct({Key? key}) : super(key: key);

  @override
  State<SProduct> createState() => _SProductState();
}

class _SProductState extends State<SProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
      ),
    );
    
  }
}