import 'package:flutter/material.dart';

class CoustmerScreen extends StatefulWidget {
  const CoustmerScreen({super.key});

  @override
  State<CoustmerScreen> createState() => _CoustmerScreenState();
}

class _CoustmerScreenState extends State<CoustmerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Coustmer From Contacts'),
      ),
    );
  }
}
