import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_foodly/common/app_style.dart';
import 'package:restaurant_foodly/constants/constants.dart';
import 'package:restaurant_foodly/common/tab_widget.dart';


class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: Container(
        height: 35.h,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xffF3F4F8),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
            color: Color(0xFF30b9b2),
            borderRadius: BorderRadius.circular(25.r),
          ),
          labelColor: Color(0xffFFFFFF),
          unselectedLabelColor: Color(0xffC1C0C8),
          isScrollable: true,
          labelPadding: EdgeInsets.zero,
          unselectedLabelStyle:appStyle(12,Color(0xffC1C0C8), FontWeight.normal),
          labelStyle: appStyle(12,Color(0xffFAFAFC), FontWeight.w600),
          tabs: List.generate(orderList.length,
              (i) => tabWidget(text: orderList[i])),
        ),
      ),
    );
  }
}