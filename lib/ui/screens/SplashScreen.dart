import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../db.dart';
import '../../models/commety_model.dart';
import '../components/testcard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  List<CommetyModel> commeties = [];
  int numb = 1;
  @override
  void initState() {
   getAllCommeteis();
   getNumb();
   super.initState();
  }
  getAllCommeteis() async{
    final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    List<CommetyModel> commetiesda = await database.commetyDao.findAllCommety();
    setState(() {
      commeties  = commetiesda;
    });
  }
  deleteCommety(CommetyModel cm) async{
    final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    database.commetyDao.deleteCommety(cm.id!);
    getAllCommeteis();
  }

  getNumb()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
int curr_numb = await prefs.getInt("counter") ?? 1;
setState(() {
  numb = curr_numb;
});
  }

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
          onPressed: () async{
            //-------SQLITE CODE LOGIC START HERE -----------------

            // int random_no = Random().nextInt(9)+ 1;
            // CommetyModel cm = CommetyModel(name: "Random Created", amount: "${random_no * 100000}", total_month: 10, left_month: random_no);
            // final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
            // database.commetyDao.insertCommety(cm);
            // getAllCommeteis();


            // --------Shared Prefrence LOGIC START HERE ---------

            int updated_numb = numb*2;
            final SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setInt('counter', updated_numb);

            getNumb();

          },
          child: Icon(Icons.add)),
      body: Container(
        height: double.infinity,
        width: double.infinity,

        // --------Shared Prefrence UI START HERE ---------
        child: Text("No. is ${numb}"),
        // color: Colors.black,
        //-------SQLITE CODE UI START HERE -----------------
     // child: ListView.builder(
     //   scrollDirection: Axis.vertical,
     //    itemCount: commeties.length,
     //    itemBuilder: (context, index) {
     //     CommetyModel commetyModel = commeties[index];
     //      return Card(
     //        color: Colors.white,
     //        elevation: 10,
     //        shadowColor: Colors.brown,
     //        child: Container(
     //            margin:
     //            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
     //            height: 130,
     //            width: double.infinity,
     //            child: Column(
     //              mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //              children: [
     //                Row(
     //                  children: [
     //                    Expanded(
     //                      child: Container(
     //                        child: Text(
     //                          "${commetyModel.name}",
     //                          style: TextStyle(
     //                            fontSize: 14,
     //                            fontWeight: FontWeight.bold,
     //                          ),
     //                          maxLines: 3,
     //                          softWrap: true,
     //                          overflow: TextOverflow.ellipsis,
     //                        ),
     //                      ),
     //                    ),
     //                    SizedBox(
     //                      width: 10,
     //                    ),
     //                    InkWell(
     //                      onTap: () {
     //                   deleteCommety(commetyModel);
     //                      },
     //                      child: Container(
     //                        child: FaIcon(
     //                          FontAwesomeIcons.deleteLeft,
     //                          size: 20,
     //                          color: Colors.brown,
     //                        ),
     //                        alignment: Alignment.topRight,
     //                        margin: EdgeInsets.only(right: 10),
     //                      ),
     //                    ),
     //                  ],
     //                ),
     //                Column(
     //                  children: [
     //                    Container(
     //                      alignment: Alignment.centerLeft,
     //                      margin: EdgeInsets.only(left: 10, top: 8),
     //                      child: Text(
     //                        "₹ ${commetyModel.amount}",
     //                        style: TextStyle(
     //                          fontSize: 18,
     //                          fontWeight: FontWeight.bold,
     //                        ),
     //                        maxLines: 3,
     //                        softWrap: true,
     //                        overflow: TextOverflow.ellipsis,
     //                      ),
     //                    ),
     //                    Container(
     //                      alignment: Alignment.centerLeft,
     //                      margin: EdgeInsets.only(left: 10, top: 4),
     //                      child: Text(
     //                        "${commetyModel.left_month} Months Left",
     //                        style: TextStyle(
     //                          fontSize: 14,
     //                          color: Colors.brown,
     //                          fontWeight: FontWeight.bold,
     //                        ),
     //                        maxLines: 3,
     //                        softWrap: true,
     //                        overflow: TextOverflow.ellipsis,
     //                      ),
     //                    ),
     //                    Container(
     //                      height: 6,
     //                      width: double.infinity,
     //                      margin: EdgeInsets.only(
     //                          top: 5, left: 10, right: 10),
     //                      decoration: BoxDecoration(
     //                          color:
     //                          Color.fromRGBO(233, 233, 233, 1.0),
     //                          borderRadius: BorderRadius.circular(5)),
     //                      child: Row(
     //                        children: [
     //                          Expanded(
     //                            flex: commetyModel.total_month -
     //                                commetyModel.left_month,
     //                            child: Container(
     //                              decoration: BoxDecoration(
     //                                  color: Colors.brown,
     //                                  borderRadius:
     //                                  BorderRadius.circular(5)),
     //                            ),
     //                          ),
     //                          Expanded(
     //                            flex: commetyModel.left_month,
     //                            child: Container(),
     //                          )
     //                        ],
     //                      ),
     //                    ),
     //                  ],
     //                )
     //              ],
     //            )),
     //      );
     //    },
     //  ),
      ),
    ));
  }
}
