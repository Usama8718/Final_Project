import 'package:avatars/avatars.dart';
import 'package:budget_app/Screens/Transection/Transection.dart';
import 'package:flutter/material.dart';
// import 'package:walletpay/Screens/Transection.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Avatar(
                elevation: 3,
                shape: AvatarShape(
                  width: 150,
                  height: 150,
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                name: 'Hotel',
                backgroundColor: Colors.blue,
                // Uses name initials (up to two)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                //                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                    hintText: "Enter Your Name"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                //                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                    hintText: "Enter Your Business Name"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                //                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  hintText: "Registerd Phone Number",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              height: 50,
              width: MediaQuery.of(context).size.width,
              // color: Colors.black,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Transection(),
                    ),
                  );
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
