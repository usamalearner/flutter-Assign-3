import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Mobile's Collection"),
      ),
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            children: [
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
              mobilesList(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget mobilesList() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("/phone.jpeg"),
      radius: 40,
    ),
    title: Text('IPhone X'),
    subtitle: Text("Rs : 100,000",style: TextStyle(color: Colors.yellow[900])),
    // trailing: Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Text('12:00 PM'),
    //     CircleAvatar(
    //       backgroundColor: Colors.green[700],
    //       radius: 5,
    //     )
    //   ],
    // )
  );
}
