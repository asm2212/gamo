import 'package:flutter/material.dart';
import 'package:gamo/pages/food/popular_food_detail.dart';
import 'package:get/get.dart';
import 'package:gamo/pages/home/main_food_page.dart';
import 'package:gamo/utils/dimensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: InitializerWidget(child: MainFoodPage()),
      home: PopularFoodDetail(),
    );
  }
}

class InitializerWidget extends StatelessWidget {
  final Widget child;

  const InitializerWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);
    return child;
  }
}
