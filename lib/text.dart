import 'package:flutter/material.dart';

class TextField01 extends StatefulWidget {
  const TextField01({Key? key}) : super(key: key);

  @override
  State<TextField01> createState() => _TextField01State();
}

class _TextField01State extends State<TextField01> {

  TextEditingController email = TextEditingController();
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text(
          "TEXT APP",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      data = value;
                    });
                  },
                  //controller: email,    //for get output after press
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,)),
                    border: OutlineInputBorder(),
                    label: Text("Enter Our Name"),
                    suffixIcon: Icon(Icons.send_rounded ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){setState(() {
              data = email.text;
            });}, child: Text("Submit")),
            SizedBox(height: 25,),
            Text("$data"),
          ],
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}