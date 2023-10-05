import 'package:avatars/avatars.dart';
import 'package:budget_app/Screens/MainScreen/Home.dart';
import 'package:budget_app/Screens/PaymentMethod/PaymentHistory.dart';
import 'package:budget_app/Screens/ProfilePage/Profile.dart';
import 'package:flutter/material.dart';
// import 'package:walletpay/Screens/PaymentHistory.dart';
// import 'package:walletpay/Screens/Profile.dart';

class Transection extends StatefulWidget {
  const Transection({super.key});

  @override
  State<Transection> createState() => _TransectionState();
}

class _TransectionState extends State<Transection> {
  List<dynamic> name = [1, 2, 3, 4, 6, 7, 8, 8];
  
  set darkMode(bool darkMode) {
    setState(() {
      this._darkMode = darkMode;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Transaction'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // alignment: Alignment.topLeft,
                        child: Avatar(
                          elevation: 3,
                          shape: AvatarShape.rectangle(50, 50,
                              BorderRadius.all(new Radius.circular(30.0))),
                          name: 'Hotel',
                          // Uses name initials (up to two)
                        ),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Hotel"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),

                            // alignment: Alignment.centerRight,
                            child: Text("+91-70-166-242-16"),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        // alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProfileScreen(),
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      //                      borderOnForeground: true,
                      //                        clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(),
                      //                              borderRadius: BorderRadius.all(const Radius.circular(8)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.business_outlined),
                          ),
                          TextButton(
                              onPressed: () {}, child: Text("Business Card"))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.business_outlined),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text("Business Card"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.dark_mode_rounded),
                        TextButton(
                          onPressed: () {},
                          child: Text("Dark Mode"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 180),
                          child: Switch(
                            value: false,
                            onChanged: (bool value) {
                              setState(() {
                                darkMode = !value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.settings),
                        TextButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Home(),
                              ),
                            );
                          },
                          child: Text("Settings"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.help_outline_sharp),
                        TextButton(
                          onPressed: () {},
                          child: Text("Help & Supports"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.help_center_outlined),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PaymentHistory(),
                              ),
                            );
                          },
                          child: Text("About Us"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
