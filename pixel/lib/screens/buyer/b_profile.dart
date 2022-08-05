import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BProfile extends StatefulWidget {
  const BProfile({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BProfileState createState() => _BProfileState();
}

class _BProfileState extends State<BProfile> {
  final double _drawerIconSize = 24;
  final double _drawerFontSize = 17;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'profile page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).colorScheme.secondary
              ])),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: [
                const Icon(Icons.notifications_outlined),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints:
                        const BoxConstraints(minWidth: 12, minHeight: 12),
                    child: const Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [
                  0.0,
                  1.0
                ],
                    colors: [
                  Theme.of(context).primaryColor.withOpacity(0.2),
                  Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ])),
            child: ListView(children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.0, 1.0],
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).colorScheme.secondary,
                    ],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "User",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  'Personal Information',
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen(title: "Splash Screen")));
                },
              ),
              ListTile(
                leading: Icon(Icons.add_home_work_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text(
                  ' Address',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   // MaterialPageRoute(builder: (context) => LoginPage()),
                  // );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(Icons.document_scanner_rounded,
                    size: _drawerIconSize,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text(
                  'Documents',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => RegistrationPage()),
                  // );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.card_travel_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  'My Cart',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // Navigator.push( context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()),);
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_center_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ForgotPasswordVerificationPage()),
                  // );
                },
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: _drawerFontSize,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                onTap: () {
                  // SystemNavigator.pop();
                },
              ),
            ])),

        // ignore: dead_code
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 100,
              // child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Priyanshu Sharma',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text("USA"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("psneb420@gmail.com"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("9864590758"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("About Me"),
                                          subtitle: Text(
                                              " I don't fake and i don't like fake people "),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
