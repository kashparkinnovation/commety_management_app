import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});
  void isInternetAvailable(BuildContext context) async{
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    bool checkInternet =  connectivityResult[0] != ConnectivityResult.none;

    if(checkInternet){
      Navigator.pop(context);
    }else {
      print("No Internet");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("asset/noint.jpeg",height: 200,width: 200,),
            SizedBox(height: 20,),
            Text("No Internet Available!",style: TextStyle(color: Colors.red,fontSize: 20,),),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                isInternetAvailable(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(58, 28, 11, 1.0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(10))),
                child: Text(
                  "Try Again!",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
