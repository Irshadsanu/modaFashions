import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  List<String> listImage =  [
    'https://img101.urbanic.com/v1/goods-pic/7b9b261741f74015ab5ce8630cc2e16f_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/04ebaed5765a43038166275eab811d2e_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/277cb986dd234f2a8c92f74e5fed97fdUR_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/c00f331bc7374b20937d9a67f188a721_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/33e0fcff699a48a9811700c92e0a0c89UR_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/31034751b88847069ca23f417dfaed93_w540_h720_q70.webp',
    'https://img101.urbanic.com/v1/goods-pic/0f8ce3efe7084f9597e32d0bdf4dfd18UR_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/5fe05214a33b408b9369a327805d715bUR_w540_h720_q70.webp',
    'https://img101.urbanic.com/v1/goods-pic/2e40ec06a0ab43479ca7530c2c2664e4_w1000_q90.webp',
    'https://img101.urbanic.com/v1/goods-pic/bbf231453098448c99ae0a99be1afb19_w540_h720_q85.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage:true,
              // height: 250,
              viewportFraction: 1/3,
              padEnds: true,
              autoPlay: true,

            // autoPlay: false,
          ),
          items: listImage.map((e) =>
              Stack(
                fit: StackFit.loose,
                children:[
                  ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                    child: Image.network(e,fit: BoxFit.cover,)),
                  Positioned(
                      top: 152,
                      left: 70,
                      child: Image.asset("assets/image/modaloggg.png",width: 50,))
                ]
              )).toList(),
        ),
      ),
    );
  }
}
