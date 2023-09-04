import 'package:modafashion/src/const/app_font.dart';
import 'package:modafashion/src/data/model/product.dart';
import 'package:modafashion/src/view/screen/component/hometab/cart_product.dart';
import 'package:flutter/material.dart';

class RecentViewScreen extends StatelessWidget {
  final List<Product>? listRecentProduct;

  const RecentViewScreen({Key? key, this.listRecentProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Recent view",
          style: AppFont.semiBold.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 30,top: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisSpacing: 20,
            // mainAxisSpacing: 20,
          mainAxisExtent: 250,
            crossAxisCount: 2,
            childAspectRatio: 80/140),
        itemCount: listRecentProduct?.length,
        itemBuilder: (_, index) {
          Product? product = listRecentProduct![index];
          return CartProduct(
            product: product,
          );
        },
      ),
    );
  }
}