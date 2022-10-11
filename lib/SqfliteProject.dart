import 'package:flutter/material.dart';

import 'RegisterScreen.dart';

class SqfliteProject extends StatefulWidget {

  @override
  State<SqfliteProject> createState() => _SqfliteProjectState();
}

class _SqfliteProjectState extends State<SqfliteProject> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: (){},
                  child: Text("ADD PROJECT",style: TextStyle(fontSize: 30),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: (){},
                  child: Text("VIEW PROJECT",style: TextStyle(fontSize: 30),)),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: (){},
                  child: Text("ADD EMPLOYEE",style: TextStyle(fontSize: 30),)),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>RegisterScreen())
                    );
                  },
                  child: Text("VIEW",style: TextStyle(fontSize: 30),)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
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
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Text("Quantity",style: TextStyle(fontSize: 30)),
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
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            Text("Price",style: TextStyle(fontSize: 30)),
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
                  keyboardType: TextInputType.name,
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3.0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                child: Center(child: Text("Submit",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),))
            ),
            SizedBox(height: 60,),

          ],
        ),
      ),
    );
  }
}
