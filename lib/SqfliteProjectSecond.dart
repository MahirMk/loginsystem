import 'package:flutter/material.dart';

class SqfliteProjectSecond extends StatefulWidget {

  @override
  State<SqfliteProjectSecond> createState() => _SqfliteProjectSecondState();
}

class _SqfliteProjectSecondState extends State<SqfliteProjectSecond> {

  var grpvalue="";
  var select="i1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite Second"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
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
            SizedBox(height: 30,),
            Text("Salary",style: TextStyle(fontSize: 30)),
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
            SizedBox(height: 30,),
            Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Male",style: TextStyle(fontSize: 20),),
                Radio(
                  groupValue: grpvalue,
                  onChanged: (val)
                  {
                    setState(() {
                      grpvalue=val;
                    });
                  },
                  value: "M",
                ),
                Text("Female",style: TextStyle(fontSize: 20),),
                Radio(
                  groupValue: grpvalue,
                  onChanged: (val)
                  {
                    setState(() {
                      grpvalue=val;
                    });
                  },
                  value: "F",
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            DropdownButton(
              value: select,
              onChanged: (val)
              {
                setState(() {
                  select=val;
                });
              },
              items: [
                DropdownMenuItem(
                  child: Text("Item 1"),
                  value: "i1",
                ),
                DropdownMenuItem(
                  child: Text("Item 2"),
                  value: "i2",
                ),
                DropdownMenuItem(
                  child: Text("Item 3"),
                  value: "i3",
                ),
                DropdownMenuItem(
                  child: Text("Item 4"),
                  value: "i4",
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            ElevatedButton(onPressed: (){},
                child: Text("Submit")
            ),
          ],
        ),
      ),
    );
  }
}
