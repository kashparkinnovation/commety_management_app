import 'package:commety_management_app/ui/screens/DashboardScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formkey = new GlobalKey();
  TextEditingController _user_id_controller = new TextEditingController();
  TextEditingController _password_controller = new TextEditingController();
  bool _is_password_hidden = true;

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
                    child: Form(
                      key: _formkey,
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
                              labelText: "User Id",
                              hintText: "Enter User Id",
                              prefixIcon: Icon(
                                Icons.person,
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
                            keyboardType: TextInputType.text,
                            controller: _user_id_controller,
                            validator: (value) {
                              if (value!.length < 3) {
                                return "Please Enter Valid User Id";
                              } else {
                                return null;
                              }
                            },
                          ),
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
                              labelText: "Password",
                              hintText: "Enter Password",
                              prefixIcon: Icon(
                                Icons.lock_person_outlined,
                                color: Colors.brown,
                              ),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _is_password_hidden =
                                          !_is_password_hidden;
                                    });
                                  },
                                  child: Icon(
                                    _is_password_hidden
                                        ? Icons.remove_red_eye
                                        : Icons.password,
                                    color: Colors.brown,
                                  )),
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
                            obscureText: _is_password_hidden,
                            controller: _password_controller,
                            validator: (value) {
                              if (value!.length < 3) {
                                return "Please Enter Valid User Id";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 14),
                              )),
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
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
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
