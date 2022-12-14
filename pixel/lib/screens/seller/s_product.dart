import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixel/screens/seller/s_customers.dart';
import 'package:pixel/screens/seller/s_home_screen.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:animate_do/animate_do.dart';
import 'package:pixel/screens/widgets/productsjson.dart';

class SProduct extends StatefulWidget {
  const SProduct({Key? key}) : super(key: key);

  @override
  State<SProduct> createState() => _SProductState();
}

class _SProductState extends State<SProduct> {
  int _currentIndex=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Your Products'),

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_cart, color: Colors.white),
          )
        ],
      ),
      
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
            switch(index){
              case 0:{
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SCustomers() ));
              }
              break;
              case 1:{
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SHomeScreen()));

              }
              break;
              case 2:{
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SProduct()));
                
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
      body:SingleChildScrollView(
        padding:EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getProductLists(),

        ],
      ),) 
      
      );
    
  }
  Widget getProductLists()
  {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(productsjson.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: FadeIn(
             duration: Duration(milliseconds: 1000 * index),
            child: Row(
              children: [
                Container(
                  width: (size.width - 30) * 0.7,
                  height: 80,
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        child: Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(productsjson[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              top: 10,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    // border: Border.all(
                                    //     color: secondary.withOpacity(0.02)),
                                    // color: secondary.withOpacity(0.1)
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productsjson[index]['name'],
                              style: TextStyle(fontSize: 16),
                              maxLines: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rs.",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  productsjson[index]['price'],
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        // color: secondary
                        ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close,
                                size: 15,
                              )),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     Icon(LineIcons.minusSquare),
                          //     SizedBox(
                          //       width: 10,
                          //     ),
                          //     Text(
                          //       "01",
                          //       style: TextStyle(fontSize: 14),
                          //     ),
                          //     SizedBox(
                          //       width: 10,
                          //     ),
                          //     Icon(LineIcons.plusSquare)
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}