import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginsystem/LoginScreen.dart';
import 'package:loginsystem/LogoutScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController _name= TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  var txtname="";
  var txtcontact="";
  var txtemail="";
  var txtpassword="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Register")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70.0,),
            Text("Name",style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(fillColor: Colors. white, filled: true),
                  style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                  controller: _name,
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Text("Contact Number",style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(fillColor: Colors. white, filled: true),
                  style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                  controller: _contact,
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Text("Email",style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(fillColor: Colors. white, filled: true),
                  style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Text("Password",style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(fillColor: Colors. white, filled: true),
                  style: TextStyle(color: Colors. black,fontWeight: FontWeight.bold),
                  controller: _password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                border: Border.all(color: Colors.black,width: 3.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: GestureDetector(
                  onTap: () async{

                    var nm = _name.text.toString();
                    var cn = _contact.text.toString();
                    var en = _email.text.toString();
                    var pn = _password.text.toString();

                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.setString("name", nm);
                    prefs.setString("contact", cn );
                    prefs.setString("email", en);
                    prefs.setString("password", pn);

                    Navigator.of(context).pop();
                    Fluttertoast.showToast(
                        msg: "Success Register",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  child: Center(child: Text("REGISTER",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
