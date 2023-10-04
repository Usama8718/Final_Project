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
                  onPressed: () {},
                  icon: Icon(Icons.info_outline),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
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
                                    child: Text(
                                      "₹ 0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ),
                                  Container(
                                    child: Text("Cash In Hands"),
                                  ),
                                ],
                              ),
                              Divider(),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      "₹ 0",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text("Todays Balance"),
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
                                    icon:
                                        Icon(Icons.arrow_circle_right_outlined),
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
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "04 Oct",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          child: Text("OUT"),
                        ),
                        Text("IN")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    // margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0 ENTRIES"),
                        Container(
                          margin: EdgeInsets.only(left: 50),
                          child: Text(
                            "₹ 0",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "₹ 0",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 430, left: 20),
              // height: 50,
              decoration: BoxDecoration(
                  //                  border: Border.all(),
                  //                    borderRadius: BorderRadius.circular(15)
                  //  boxShadow:[BoxShadow(color:Colors.black38 ,blurRadius :4)]
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    // color: Colors.red,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.outbound),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Out",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 40,
                    width: 150,
                    // color: Colors.green,
                    // padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.add_box_rounded),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "IN",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
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
