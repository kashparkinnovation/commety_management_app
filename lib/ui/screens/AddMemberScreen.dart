import 'package:commety_management_app/ui/components/InputField.dart';
import 'package:flutter/material.dart';

class AddMemberScreen extends StatefulWidget {
  AddMemberScreen({super.key});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  bool _is_loading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Member"),
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
                        "Add New Member",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Create new member for commeties",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Member Name",
                        controller: nameController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.person,
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
                          label: "Mobile",
                          controller: phoneController,
                          borderColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          prefixIcon: Icons.call,
                          validator: (mobileval) {
                            final RegExp mobileRegex = RegExp(r'^[6-9]\d{9}$');
                            if (mobileRegex.hasMatch(mobileval!)) {
                              return null;
                            } else {
                              return 'Enter a valid 10-digit mobile number';
                            }
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Address",
                        controller: addressController,
                        borderColor: Colors.black,
                        keyboardType: TextInputType.text,
                        prefixIcon: Icons.pin_drop,
                        validator: (value) {
                          if (value!.trim().length < 3) {
                            return "Please Enter Correct Address";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            // if(formKey!.currentState!.validate()){
                            //   print("Form Complete");
                            // }
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
