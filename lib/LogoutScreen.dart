import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginScreen.dart';

class LogoutScreen extends StatefulWidget {

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {

  var name="";
  var contact="";
  var email="";
  var password="";

  getdata() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString("name");
      contact = prefs.getString("contact");
      email = prefs.getString("email");
      password = prefs.getString("password");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60.0,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 350,
                  height: 50,
                  color: Colors.black,
                    child: Center(child: Text("Name : "+name,style: TextStyle(fontSize: 30.0,color: Colors.white),))),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.black,
                    child: Center(child: Text("Contact : "+contact,style: TextStyle(fontSize: 25.0,color: Colors.white),))),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                    width: 350,
                    height: 50,
                    color: Colors.black,
                    child: Center(child: Text("Email : "+email,style: TextStyle(fontSize: 20.0,color: Colors.white),))),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.black,
                    child: Center(child: Text("Password : "+password,style: TextStyle(fontSize: 25.0,color: Colors.white),))),
              ),
              SizedBox(height: 80,),
              GestureDetector(
                  onTap : () async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.clear();
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>LoginScreen())
                    );
                  },
                  child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 4.0),
                        ),
                      width: 120,
                      height: 50,
                      child: Center(child: Text("LogOut",style: TextStyle(fontSize: 30,color: Colors.black),))
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
