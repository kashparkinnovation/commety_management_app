import 'package:commety_management_app/ui/screens/DashboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _user_id_controller = new TextEditingController();
  TextEditingController _password_controller = new TextEditingController();
  bool _is_otp_sent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 28, 11, 1.0),

      // backgroundColor: Color.fromRGBO(58, 28, 11, 1.0),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 120,
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Commety",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 28, top: 10),
                  child: Text(
                    "Munshi",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50)),
                      color: Colors.white),
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          minLines: 1,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: Colors.brown),
                          decoration: InputDecoration(
                            errorMaxLines: 2,
                            labelText: "Mobile No.",
                            hintText: "Enter Mobile No.",
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.brown,
                            ),
                            errorStyle:
                                TextStyle(color: Colors.red, fontSize: 14),
                            labelStyle:
                                TextStyle(color: Colors.brown, fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(fontSize: 14, color: Colors.brown),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.brown),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.red), // Customize border color
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: _user_id_controller,
                          validator: (value) {
                            if (value!.length != 10) {
                              return "Please Enter Valid Mobile No.";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        _is_otp_sent ?
                        TextFormField(
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          minLines: 1,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: Colors.brown),
                          decoration: InputDecoration(
                            errorMaxLines: 2,
                            labelText: "OTP",
                            hintText: "Enter OTP",
                            prefixIcon: Icon(
                              Icons.lock_person_outlined,
                              color: Colors.brown,
                            ),

                            errorStyle:
                                TextStyle(color: Colors.red, fontSize: 14),
                            labelStyle:
                                TextStyle(color: Colors.brown, fontSize: 14),
                            floatingLabelStyle:
                                TextStyle(fontSize: 14, color: Colors.brown),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.brown),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.red), // Customize border color
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color:
                                      Colors.brown), // Customize border color
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,

                          controller: _password_controller,
                          validator: (value) {
                            if (value!.length != 6) {
                              return "Please Enter Valid OTP";
                            } else {
                              return null;
                            }
                          },
                        ) : Container(),

                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, '/dashboard');
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
                              _is_otp_sent ? "Sign in" : "Send OTP",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Or Sign In With",
                              style: TextStyle(
                                  color: Colors.brown, fontSize: 14),
                            )),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){

                          },
                          child: Card(
                            shadowColor: Colors.black,
                            elevation: 10,
                            color: Colors.white,

                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(12.0),
                              child: FaIcon(FontAwesomeIcons.google,size: 24,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 45),
              width: double.infinity,
              alignment: Alignment.centerRight,
              height: 150,
              child: Image.asset(
                "asset/moneybowl.png",
                height: 150,
                width: 180,
              ))
        ],
      ),
    );
  }
}
