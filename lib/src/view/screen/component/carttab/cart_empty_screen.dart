import 'package:flutter/material.dart';

class CartEmptyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/modaloggg.png",scale: 3),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Co&Founders\nShuhaib,Irshad\nApp will coming shortly",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}
