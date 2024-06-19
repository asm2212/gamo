
import 'package:flutter/material.dart';
import 'package:gamo/home/food_page_body.dart';
import 'package:gamo/utils/colors.dart';
import 'package:gamo/utils/dimensions.dart';
import 'package:gamo/widgets/big_text.dart';
import 'package:gamo/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
        child: Container(
          margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(text: "Ethiopia",color: AppColors.mainColor,),
                  Row(
                    children: [
                          SmallText(text: "40",color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: Dimensions.height45,
                  height: Dimensions.height45,
                  child: Icon(Icons.search,color: Colors.white,size:Dimensions.iconSize24,),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius15), // Add comma here
                  ),
                ),
              )
            ],
          ),
        ),
      ),
        FoodPageBody(),
        ],
      )
    );
  }
}