import 'package:flutter/material.dart';

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 223, 176, 231),
                    border: Border.all(width: 20,color: const Color.fromARGB(255, 167, 112, 177))
                ),
                height: 350,
                width: 350,
                
                // child: ElevatedButton(onPressed: ()=>print("button pressed...!"), child: Text("Click me")),
                child: GestureDetector(child: Center(
                    // child: Text("hello"),
                    child: Image.asset("images/dior.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,),
                    ),
                    onTap: () {
                      print("Hello from gesture detector");
                    },
                    // onTap: ()=> print("Hello from gesture detector"),
            ),
        ),
    )
    );
}
}