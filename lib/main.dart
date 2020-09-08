import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/customLekOut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar",
        ),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              alignment: Alignment.center,
              child: Text(
                "លទ្ធផលឆ្នោត​ វៀតណាម",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "KH_Bokor",
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        "ថ្ងៃចេញ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "KH_Battambang",
                        ),
                      ),
                    ),
                    Text(
                      "Date: ${DateFormat('dd.MM.yyyy ').format(DateTime.now())}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomLekOut(
              color: Colors.white,
              post: "A",
              two: "84",
              three: "604",
              colorText: Colors.blue,
            ),
            CustomLekOut(
              color: Colors.grey,
              post: "B",
              two: "84",
              three: "707",
              colorText: Colors.white,
            ),
            CustomLekOut(
              color: Colors.white,
              post: "A",
              two: "84",
              three: "604",
              colorText: Colors.blue,
            ),
            CustomLekOut(
              color: Colors.grey,
              post: "B",
              two: "84",
              three: "707",
              colorText: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
