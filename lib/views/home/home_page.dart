import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodly/common/background_container.dart';
import 'package:restaurant_foodly/common/custom_appbar.dart';
import 'package:restaurant_foodly/common/home_tile.dart';
import 'package:restaurant_foodly/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        flexibleSpace: const CustomAppbar(),
      ),
      body: BackgroundContainer(
        color: kLightWhite,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15.h,
            ),
           const HomeTiles()
          ],
       ) ),
        );
  }
}

class HomeTiles extends StatelessWidget {
  const HomeTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin : EdgeInsets.symmetric(horizontal: 12.w),
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        height: 70.h,
          decoration: BoxDecoration(
            color: kOffWhite,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeTile(
                  onTap: (){},
                  text: "Add Foods",
                  iconPath: "assets/icons/taco.svg",
                ),
            
                HomeTile(
                  onTap: (){},
                  text: "Wallet",
                  iconPath: "assets/icons/wallet.svg",
                ),
            
                HomeTile(
                  onTap: (){},
                  text: "Foods",
                  iconPath: "assets/icons/french_fries.svg",
                ),
            
                HomeTile(
                  onTap: (){},
                  text: "Self Deliveries",
                  iconPath: "assets/icons/deliver_food.svg",
                ),
            
              ],
            ),
          ),
        );
  }
}
