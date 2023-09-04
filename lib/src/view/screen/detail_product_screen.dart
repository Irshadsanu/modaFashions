import 'dart:math';
import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:modafashion/src/const/app_colors.dart';
import 'package:modafashion/src/const/app_font.dart';
import 'package:modafashion/src/data/model/inventory.dart';
import 'package:modafashion/src/data/model/product.dart';
import 'package:modafashion/src/router/router_path.dart';
import 'package:modafashion/src/viewmodel/auth_viemodel.dart';
import 'package:modafashion/src/viewmodel/cart_viewmodel.dart';
import 'package:modafashion/src/viewmodel/choice_chip.dart';
import 'package:modafashion/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import 'category_tab.dart';

class DetailProductScreen extends StatefulWidget {
  final Product? product;

  const DetailProductScreen({Key? key, this.product}) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {


  Inventory? inventory = Inventory();

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context,listen: true);
    final authViewModel = Provider.of<AuthViewModel>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
         widget.product!.title!,
          style: AppFont.semiBold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pop(context);
              setState(() {
                widget.product!.isLike =! widget.product!.isLike!;
              });
            },
            icon: Icon(
              widget.product!.isLike! ?Icons.favorite  :  Icons.favorite_border,
              color:  widget.product!.isLike! ?  AppColors.primaryColorRed : AppColors.primaryColorGray,
              size: 25,
            ),
          ),
          IconButton(
              onPressed: () {
                showChooseSize(context,widget.product);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryTab(),));
              },
              icon:
                Icon(Icons.shopping_cart_outlined,color: Colors.black,),
              ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 330,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  // autoPlay: false,
                ),
                items: widget.product!.urlImage
                    ?.map((e) =>
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/1.3,
                        child: Image.network(
                              e,
                              fit: BoxFit.fill,
                            ),
                      ),
                    ))
                    .toList(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.product!.title!,
                            style: AppFont.bold.copyWith(fontSize: 23),
                          ),
                        ),
                        Text("Rs."+
                          widget.product!.price.toString(),
                          style: AppFont.bold.copyWith(fontSize: 23),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Rs."+
                      widget.product!.category!+" (orginal Price)",
                      style: AppFont.regular.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 5,
                          direction: Axis.horizontal,
                          itemSize: 15,
                          itemCount: 5,
                          ignoreGestures: true,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('rating')
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.product!.description!,
                      style: AppFont.regular.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          height: 1.4,
                          letterSpacing: .2,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rating & Review",
                      style: AppFont.bold.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (BuildContext ctx) {
          return Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.2),
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(2, -2),
              ),
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff96322c),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                onPressed: () {
                  if (authViewModel.isLoggedIn == false) {
                    Navigator.pushNamed(context, LoginScreens);
                  }else{
                    showChooseSize(ctx,widget.product);
                  }
                },
                child: Text(
                  "Add to cart".toUpperCase(),
                  style: AppFont.medium
                      .copyWith(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

   showChooseSize(BuildContext ctx,Product? product){
     return  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      context: ctx,
      builder: (_) {
        ProductViewModel productViewModel = ProductViewModel(); // cre
        ProductViewModel productViewModel2 = ProductViewModel(); // cre// ate instance provider
        String select = '';
        Inventory?  a;
        return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
                horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xffF9F9F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Text(
                      "Size",
                      style: AppFont.semiBold
                          .copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, bottom: 15),
                              child: ChangeNotifierProvider.value(
                                value: productViewModel,
                                child: Consumer<ProductViewModel>(
                                  builder: (BuildContext context, productVM, Widget? child) {
                                    return ChoiceOption(
                                      listSize: product!.inventory!.map((e) => e.size!).toSet().toList(),
                                      onSelectCallBack: (value) {
                                        var size = product.inventory!.firstWhere((element) => element.size == value);
                                        if(size != null){
                                          inventory?.size = size.size;
                                          // print(inventory?.size);
                                        }
                                        var  a  =  product.inventory?.firstWhere((element) => element.color == inventory?.color && element.size == inventory?.size,orElse: ()=> Inventory() );
                                        if(a?.id != null){
                                          print('ok');
                                        }else{
                                          Fluttertoast.showToast(msg: "Size Not Available");
                                        }
                                      },
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Colors",
                      style: AppFont.semiBold
                          .copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, bottom: 15),
                              child: ChangeNotifierProvider.value(
                                value: productViewModel,
                                child: Consumer<ProductViewModel>(
                                  builder: (BuildContext context, productVM, Widget? child) {
                                    return ChoiceOption(
                                      listSize: product!.inventory!.map((e) => e.color!).toSet().toList(),
                                      onSelectCallBack: (value) {
                                        var size = product.inventory!.firstWhere((element) => element.color == value);
                                        if(size != null){
                                          inventory?.color = size.color;
                                           // print(inventory?.color);
                                        }
                                       a =  product.inventory?.firstWhere((element) => element.color == inventory?.color && element.size == inventory?.size );
                                        print(a?.id);
                                        if(a != null){
                                          print(a?.stockQuantity);
                                        }else{
                                          print('f');
                                        }
                                      },
                                    );
                                  },
                                ),
                              )
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.primaryColorRed,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(40.0),
                        ),
                      ),
                      onPressed: () {
                        // String? size = product.inventory![productViewModel.selectIndex].size;
                        // String? color = product.inventory![productViewModel.selectIndex].color;
                         Provider.of<CartViewModel>(ctx,listen: false).addToCart(product!,a!);
                         Fluttertoast.showToast(msg: "Item add in your cart");
                      },
                      child: Text(
                        "Add to cart".toUpperCase(),
                        style: AppFont.medium.copyWith(
                            fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },);
      },
    );
  }
  Widget buildText(List<String> list){
    return Wrap(
      children: list.map((e) => Text(e)).toList(),
    );
  }

}
