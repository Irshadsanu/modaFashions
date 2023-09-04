import 'package:modafashion/src/const/app_colors.dart';
import 'package:modafashion/src/const/app_font.dart';
import 'package:modafashion/src/data/model/product.dart';
import 'package:modafashion/src/viewmodel/product_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatefulWidget {
  final Product? product;
  final int? index;
  // final VoidCallback onFavoritePressed;

  const CartProduct({Key? key, this.product, this.index}) : super(key: key);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  ProductViewModel? productViewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.product!.urlImage![0],
                    fit: BoxFit.cover,
                    width: 160,
                    height: 200,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 122,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('40%',style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),),
                )
              ),
             Consumer<ProductViewModel>(
               builder: (BuildContext context,ProductViewModel  value, Widget? child) {
                 return  Positioned(
                   right: 0,
                   bottom: 0,
                   child: InkWell(
                     onTap: (){
                       // if (widget.product?.isLike == 0 ) {
                       //   setState(() {
                       //     widget.product?.isLike = 1;
                       //   });
                       // }
                       // value.likeProduct(widget.product!);
                       setState(() {
                         widget.product!.isLike =! widget.product!.isLike!;
                       });
                     },
                     child: Container(
                         width: 35,
                         height: 35,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           shape: BoxShape.circle,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(.2),
                               offset: Offset(1, 1),
                               spreadRadius: 1,
                             ),
                           ],
                         ),
                         child: Icon(
                           widget.product!.isLike! ?Icons.favorite  :  Icons.favorite_border,
                           color:  widget.product!.isLike! ?  AppColors.primaryColorRed : AppColors.primaryColorGray,
                           size: 25,
                         )
                     ),
                   ),
                 );
               },
             )
            ],
          ),
          // Row(
          //   children: [
          //     RatingBar.builder(
          //       initialRating: 4,
          //       direction: Axis.horizontal,
          //       itemSize: 15,
          //       itemCount: 5,
          //       ignoreGestures: true,
          //       itemBuilder: (context, _) => Icon(
          //         Icons.star,
          //         color: Colors.amber,
          //       ),
          //       onRatingUpdate: (rating) {
          //         print(rating);
          //       },
          //     ),
          //     SizedBox(
          //       width: 5,
          //     ),
          //     Text('(10)')
          //   ],
          // ),

          SizedBox(
            width: 160,
            child: Text(widget.product!.title!,overflow:TextOverflow.ellipsis,style: AppFont.bold.copyWith(
              fontSize: 17,
            ),),
          ),
          Row(
            children: [
          Text("Rs."+widget.product!.price.toString(),style: AppFont.bold.copyWith(
            fontSize: 14,
            color: AppColors.primaryColorRed
          ),),
              SizedBox(
                width: 8,
              ),
              Text("Rs."+widget.product!.category!,style: AppFont.regular.copyWith(
                fontSize: 13,
                decoration: TextDecoration.lineThrough,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.normal,
              ),),
            ],
          ),
        ],
      )),
    );
  }
}
