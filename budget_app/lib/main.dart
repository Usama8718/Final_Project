import 'package:budget_app/Screens/SplashScreen/Splash.dart';
import 'package:flutter/material.dart';
// import 'package:walletpay/Screens/Splash.dart';
void main (){
  runApp(WalletPay());
}

class WalletPay extends StatefulWidget {
  const WalletPay({super.key});

  @override
  State<WalletPay> createState() => WalletPayState();
}

class WalletPayState extends State<WalletPay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}