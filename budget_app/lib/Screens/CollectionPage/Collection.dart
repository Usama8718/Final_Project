import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text('Collections')),
            Container(
              // margin: EdgeInsets.only(left: 140),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.info),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Center(
              child: Icon(
                Icons.calendar_month_sharp,
                size: 50,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text("Please Add Coustmer To Start Collecting Payments"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "AddCoustmer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
