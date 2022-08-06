import 'package:flutter/material.dart';
import 'package:pixel/screens/buyer/b_profile.dart';
import 'package:pixel/screens/get_started_screen.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:pixel/screens/seller/s_product.dart';
import 'package:pixel/screens/seller/s_customers.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SHomeScreen(),
  ));
}

class SHomeScreen extends StatefulWidget {
  const SHomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SHomeScreenState createState() => _SHomeScreenState();
}

class _SHomeScreenState extends State<SHomeScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Dashboard'),

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BProfile()));
            },
            icon: Icon(Icons.account_box, color: Colors.white),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text('Priyanshu Sharma'),
              accountEmail: Text('psneb420@gmail.com'))
        ],
      )),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SCustomers()));
                }
                break;
              case 1:
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SHomeScreen()));
                }
                break;
              case 2:
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SProduct()));
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
