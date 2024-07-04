import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamo/utils/colors.dart';
import 'package:gamo/utils/dimensions.dart';
import 'package:gamo/widgets/app_column.dart';
import 'package:gamo/widgets/app_icon.dart';
import 'package:gamo/widgets/big_text.dart';
import 'package:gamo/widgets/icon_and_text_widget.dart';
import 'package:gamo/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super (key : key );


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize-20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/food8.jpg'),
                  fit: BoxFit.cover,
                ),
          ))
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
               ],
          )),
          Positioned(
            top: Dimensions.popularFoodImgSize,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: "wowowo",),
                      SizedBox(height: Dimensions.height20,),
                      BigText(text: "introduce"),
                    ],
                  )
            ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
           borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),
           )
        ),
      ),
    );
  }
}