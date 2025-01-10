import 'package:commety_management_app/models/commety_model.dart';
import 'package:commety_management_app/models/pending_payments.dart';
import 'package:commety_management_app/sample_data/dummyCommeties.dart';
import 'package:commety_management_app/sample_data/dummyPayments.dart';
import 'package:commety_management_app/ui/components/commetyCard.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {



  List<CommetyModel> commeties = [];
  List<PendingPayments> pending_payments = [];
TextEditingController testController = TextEditingController();

void isInternetAvailable() async{
  final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
  if(connectivityResult[0] == ConnectivityResult.none){
    Navigator.pushNamed(context, '/noInternet');
  }
}


  @override
  void initState() {
    commeties = DummyCommety().getCommetyData();
    pending_payments = DummyPayments().getPendingPayments();
    isInternetAvailable();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                isDismissible: false,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.sizeOf(context).height * 3 / 4,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    width: double.infinity,
                    child: Container()
                  );
                });
          },
          splashColor: Colors.brown,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Colors.brown),
              borderRadius: BorderRadius.circular(100)),
          backgroundColor: Colors.white,
          // Customize color
          child: FaIcon(FontAwesomeIcons.handHoldingDollar,
              color: Color.fromRGBO(58, 28, 11, 1.0), size: 30),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          child: BottomAppBar(
            // surfaceTintColor: Colors.white,
            height: 70,
            color: Color.fromRGBO(58, 28, 11, 1.0),
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.house,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {


                  },
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.users,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {
Navigator.pushNamed(context, '/addMember');
                  },
                ),
                Container(),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.peopleGroup,
                      color: Colors.white, size: 20),
                  onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.gear,
                      color: Colors.white, size: 20),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(

          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("asset/moneybowl.png"),
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          height: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Dev Singhal",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(

                        color: Color.fromRGBO(58, 28, 11, 1.0),
                        child: Image.asset(
                          "asset/building.jpg",
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                        alignment: Alignment.bottomCenter,
                        height: 300,
                      ),
                      Container(

                        padding: EdgeInsets.symmetric(vertical: 50),
                        height: 300,

                        width: double.infinity,
                        color: Color.fromRGBO(58, 28, 11, 0.7),
                        child: Column(
                          children: [

                            Text(
                              "Pending Payments",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "₹ 10,92,999/-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 36),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Pending Payouts",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            Text(
                              "₹ 10,92,999/-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pending Payments",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View All >",
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  ListView.builder(
                      itemCount: pending_payments.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  pending_payments[index].name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                Column(
                                  children: [
                                    pending_payments[index].pending_amount !=
                                            "0"
                                        ? Text(
                                            pending_payments[index]
                                                .pending_amount,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent),
                                          )
                                        : Container(),
                                    pending_payments[index].pending_payout !=
                                            "0"
                                        ? Text(
                                            pending_payments[index]
                                                .pending_payout,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.greenAccent))
                                        : Container()
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pending Payouts",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "View All >",
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                      itemCount: pending_payments.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  pending_payments[index].name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                Column(
                                  children: [
                                    pending_payments[index].pending_amount !=
                                            "0"
                                        ? Text(
                                            pending_payments[index]
                                                .pending_amount,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.redAccent),
                                          )
                                        : Container(),
                                    pending_payments[index].pending_payout !=
                                            "0"
                                        ? Text(
                                            pending_payments[index]
                                                .pending_payout,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.greenAccent))
                                        : Container()
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 305),
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: commeties.length,
                  itemBuilder: (context, index) {
                    return CommetyCard(commetyModel: commeties[index],);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
