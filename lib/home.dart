import 'package:flutter/material.dart';
import 'package:flutter_project/shop.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Flower Store",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
),
        backgroundColor: Color.fromARGB(255, 117, 201, 240),
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(Icons.shop),
            onTap: (){ print("Hello from gesture detector");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyShop()));
            },

          )
          ,Icon(Icons.person),
        ],

      ),
      body: Padding(padding: const EdgeInsets.only(
        top: 20,
        left: 40,
        right: 40,
        bottom: 20,
      ),
      child: Container(
        height:  400,
        width: 400,
        color:  Color.fromARGB(255, 190, 147, 240),
        child: Padding(
          padding:  const EdgeInsets.all(10),
          child: Text("We provide fresh flowers",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Arial",
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,

          ),

          ),
        
        ),
      ),
      ),
    );
  }
}