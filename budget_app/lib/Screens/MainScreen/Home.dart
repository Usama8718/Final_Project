import 'package:budget_app/Screens/CashBook/CashBook.dart';
import 'package:budget_app/Screens/CollectionPage/Collection.dart';
import 'package:budget_app/Screens/CoustmerPage/AddCoustmer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 200,
            color: Color.fromARGB(255, 25, 123, 203),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.only(bottom: 90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.book,
                            color: Color(0xFFFFFFFF),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 240),
                            child: Text(
                              "Hotel",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Collection(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.collections,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            height: 150,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Text("You will give"),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          child: Text("You will gate"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: Text(
                            "₹0",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          // color: Colors.black,
                          thickness: 3,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 80),
                          child: Text(
                            "₹0",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            margin: EdgeInsets.only(left: 120),
                            child: Text("View Report"),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_circle_left_outlined),
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 720, left: 220),
            height: 50,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 94, 12, 12)),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CoustmerScreen(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Coustmer",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 250,
            ),
            height: 60,
            width: MediaQuery.of(context).size.width,
            // color: Colors.amber,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.book_online,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CashBook(),
                      ),
                    );
                      },
                      child: Text("OPEN CASHBOOK"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
