import 'package:ecommerce/dress.dart';
import 'package:ecommerce/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Home()
      )
    );
  }
}


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Center(child: Text("Maria's Collection")),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("/bg1.jpeg"), fit: BoxFit.fill)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('/bg.jpeg'),
                      radius: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                          // Navigator.pop(context);
                            Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Dress()));
                      },
                      child: Text("Dresses"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink),
                          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Mobile()));
                      },
                      child: Text("Mobiles"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     ElevatedButton(
                      onPressed: () {
                     
                      },
                      
                      child: Text("Developer"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20))),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

