import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginsystem/RegisterScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LogoutScreen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _contact = TextEditingController();
  TextEditingController _password = TextEditingController();

  var txtcontact="";
  var txtpassword="";



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset("img/App Icon.png",height: 120,),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 180,
                  height: 50,
                  child: Center(child: Text("CONTACT",style: TextStyle(color: Colors.black,fontSize: 30),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black,width: 3.0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(fillColor: Colors. black12, filled: true,
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 10,
                              child: Icon(Icons.call,color: Colors.black,)
                          ),
                        ),
                    ),
                    style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                    controller: _contact,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child:  Container(
                    width: 200,
                    height: 50,
                    child: Center(child: Text("PASSWORD",style: TextStyle(color: Colors.black,fontSize: 30),))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black,width: 3.0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(fillColor: Colors. black12, filled: true,
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 10,
                            child: Icon(Icons.lock,color: Colors.black,)
                        ),
                      ),
                    ),
                    style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                    controller: _password,
                   obscureText: true,
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.black,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: GestureDetector(
                    onTap : () async{

                      var cn = _contact.text.toString();
                      var pn = _password.text.toString();

                      SharedPreferences prefs = await SharedPreferences.getInstance();

                      var maincontact = prefs.getString("contact");
                      var mainpassword = prefs.getString("password");

                      if(cn==maincontact && pn==mainpassword)
                      {
                        Fluttertoast.showToast(
                            msg: "Your Contact And Password is True",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString("islogin", "yes");
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>LogoutScreen())
                        );
                      }
                      else
                      {
                        Fluttertoast.showToast(
                            msg: "Your Email And Password is Incorrect",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                    child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("OR",style: TextStyle(fontSize: 20)),
              ),
              GestureDetector(
                  onTap : () async{

                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=>RegisterScreen())
                     );
                  },
                  child: Text("(Create Account)",style: TextStyle(fontSize: 20),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
