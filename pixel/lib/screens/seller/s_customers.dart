import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pixel/screens/seller/s_product.dart';
import 'package:pixel/screens/seller/s_home_screen.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SCustomers extends StatefulWidget {
  const SCustomers({Key? key}) : super(key: key);

  @override
  State<SCustomers> createState() => _SCustomersState();
}

class _SCustomersState extends State<SCustomers> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Customers',
                          style: TextStyle(color: Colors.orange),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                        )
                      ],
                    )),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellow,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text('Priyanshu Sharma'),
                              Text('Dhapasi'),
                              Text('*****'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/seller1.jpeg'),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellow,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text('Priyanshu Sharma'),
                              Text('Dhapasi'),
                              Text('*****'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/seller1.jpeg'),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 230, 205, 184),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text('Priyanshu Sharma'),
                              Text('Dhapasi'),
                              Text('*****'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/seller1.jpeg'),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.yellow,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text('Priyanshu Sharma'),
                              Text('Dhapasi'),
                              Text('*****'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/seller1.jpeg'),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 230, 205, 184),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text('Priyanshu Sharma'),
                              Text('Dhapasi'),
                              Text('*****'),
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Image(
                                image: AssetImage('assets/images/seller1.jpeg'),
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),

      // drawer: Drawer(
      //     child: ListView(
      //   children: const [
      //     UserAccountsDrawerHeader(
      //         accountName: Text('Priyanshu Sharma'),
      //         accountEmail: Text('psneb420@gmail.com'))
      //   ],
      // )),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.people_alt_outlined, color: Colors.orange),
          Icon(Icons.dashboard_outlined, color: Colors.orange),
          Icon(Icons.inventory_2_outlined, color: Colors.orange),
        ],

        inactiveIcons: const [
          Text(
            "Customers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Dashboard",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Products",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        initIndex: _currentIndex,

        onChanged: (index) {
          // TODO
          setState(() {
            _currentIndex = index;
            switch (index) {
              case 0:
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SCustomers()));
                }
                break;
              case 1:
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SHomeScreen()));
                }
                break;
              case 2:
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SProduct()));
                }
                break;
            }
          });
        },
        // tabCurve: ,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepOrange,
        elevation: 10,
      ),
    );
  }
}
