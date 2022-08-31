import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/johan.jpg'),
            ),
            const Text('Johan den Boer', style: TextStyle(fontSize: 40.0, fontFamily: 'Pacifico', color: Colors.white)),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(fontFamily: 'Source Sans Pro', color: Colors.teal.shade100, fontSize: 20.0, letterSpacing: 2.5),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text(
                  '+31(0) 6 249 00 477',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18.00),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'johanj.denboer@gmail.com',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18.00),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
