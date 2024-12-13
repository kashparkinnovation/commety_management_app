import 'package:commety_management_app/ui/components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCommetyScreen extends StatefulWidget {
  const AddCommetyScreen({super.key});

  @override
  State<AddCommetyScreen> createState() => _AddCommetyScreenState();
}

class _AddCommetyScreenState extends State<AddCommetyScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController month_member_Controller = TextEditingController();
  TextEditingController controlRateController = TextEditingController();
  TextEditingController secondLastAskController = TextEditingController();
  TextEditingController monthlyDateController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Commety"),
          elevation: 10,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create New Commety",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Commety Name",
                        controller: nameController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Amount",
                        controller: amountController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          // if(value!.trim().length < 3){
                          //   return "Please Enter Correct Name";
                          // }else{
                          //   return null;
                          // }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Month & Member Count",
                        controller: month_member_Controller,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Control rate (%)",
                        controller: controlRateController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Second Last Profit",
                        controller: secondLastAskController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Monthly Auction Date",
                        controller: monthlyDateController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Start Date",
                        controller: startDateController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        readonly: true,
                        suffixIcon: InkWell(
                            onTap: ()  async{
                              DateTime? selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                                barrierDismissible: false,
                              );
                              startDateController.text = "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}";
                              int month_val = int.parse(month_member_Controller.text!= ""? month_member_Controller.text : "0");
                              if(month_val != 0){
                                endDateController.text = "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}";
                              }

                            },
                            child: Icon(Icons.calendar_month_rounded)),
                        validator: (value) {
                          // if(value!.trim().length < 3){
                          //   return "Please Enter Correct Name";
                          // }else{
                          //   return null;
                          // }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "End Date",
                        controller: endDateController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.number,
                        readonly: true,
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if (formKey!.currentState!.validate()) {
                              print("Form Complete");
                            }
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
                              "Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
