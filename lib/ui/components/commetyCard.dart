import 'package:commety_management_app/models/commety_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommetyCard extends StatelessWidget {
  CommetyModel commetyModel;

   CommetyCard({super.key,required this.commetyModel});


  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.brown,
      child: Container(
          margin:
          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          height: 130,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        "${commetyModel.name}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 3,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: FaIcon(
                      FontAwesomeIcons.circleInfo,
                      size: 20,
                      color: Colors.brown,
                    ),
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10, top: 8),
                    child: Text(
                      "₹ ${commetyModel.amount}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10, top: 4),
                    child: Text(
                      "${commetyModel.left_month} Months Left",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    height: 6,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color:
                        Color.fromRGBO(233, 233, 233, 1.0),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: commetyModel.total_month -
                              commetyModel.left_month,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius:
                                BorderRadius.circular(5)),
                          ),
                        ),
                        Expanded(
                          flex: commetyModel.left_month,
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
