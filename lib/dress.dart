import 'package:flutter/material.dart';


class Dress extends StatefulWidget {
  @override
  _DressState createState() => _DressState();
}

class _DressState extends State<Dress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text("Dress's Collection"),
          ),
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            children: [
              dressList(),
              dressList(),
              dressList(),
              dressList(),
              dressList(),
              dressList(),
              dressList(),
              dressList(),
              dressList(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dressList() {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("/dress.jpg"),
        radius: 40,
      ),
      title: Text('MARIA.B'),
      subtitle: Text("Rs : 8,700",style: TextStyle(color: Colors.yellow[900])),
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