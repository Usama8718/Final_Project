import 'package:budget_app/Screens/ReportPage/Report.dart';
import 'package:flutter/material.dart';
// import 'package:walletpay/Screens/Report.dart';

class CashBook extends StatefulWidget {
  const CashBook({super.key});

  @override
  State<CashBook> createState() => _CashBookState();
}

class _CashBookState extends State<CashBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Text('Cash Book')),
              Container(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.info_outline)))
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 125,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Text("Hello"),
                            ),
                            Container(
                              child: Text("hello"),
                            ),
                          ],
                        ),
                        Divider(),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Text("hello"),
                            ),
                            Container(
                              child: Text("Hello"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.blue,
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text("VIEW SALE & EXPENSE REPORT"),
                            ),
                            // Divider(),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ReportScreen(),
                                  ),
                                );
                              },
                              icon: Icon(Icons.arrow_circle_right_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
