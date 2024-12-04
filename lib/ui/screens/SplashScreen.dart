import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _is_subscribed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Commety App"),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _is_subscribed = !_is_subscribed;
            });
          },
          child: Icon(Icons.access_time)),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            // color: Colors.black,
            child: SingleChildScrollView(
              physics: _is_subscribed
                  ? AlwaysScrollableScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "First",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Second",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Third",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Forth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Fifth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Sixth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Seventh",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Eighth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Nineth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Tenth",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Eleventh",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Twelfth",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Text("Hii It's Has More Index Than List"),
            ),
          ),
          Center(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Text(
                "Hii,Class",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
