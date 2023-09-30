import 'package:budget_app/Screens/Transection/Transection.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Selectedindex = 0;
  int index = 0;
  List Bottom_ = [
    // PaymentHistory(),
    // Transection(),
  ];
  void changeScreen(int index) {
    setState(() {
      Selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          margin: EdgeInsets.only(top: 150),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Image.asset(
                "assets/Splash_Logo.png",
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // color: Colors.amber
                ),
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/Splash_Logo.png",
                      height: 40,
                    ),
                    Text("Language")
                  ],
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/Splash_Logo.png",
                  height: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                alignment: AlignmentDirectional.center,
                child: Center(
                  child: Text(
                    "Manage Your Business Send \Reminders And Recevies Payments",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Transection(),
                    ),
                  );
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar:
      //     CoustimezedBottom_Navigation_Bar(Selectedindex: Selectedindex,lable: ),
    );
  }
}
