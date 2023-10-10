import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:bicycle_shopping_app/core/core.dart';
import 'package:bicycle_shopping_app/models/models.dart';
import 'package:bicycle_shopping_app/screens/screens.dart';

class BottomNavigationBarUI extends StatelessWidget {
  const BottomNavigationBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<BottomNavigationBarController>(
        init: BottomNavigationBarController(),
        builder: (controller) {
          return Scaffold(
            body: CustomPaint(
              painter: CustomBGScaffoldShape(),
              child: SizedBox(
                height: Get.height,
                width: Get.width,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
                        child: Column(
                          children: [
                            /// title and search section
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Choose Your Bike",
                                    fontSize: 20.sp,
                                    style: FontFamily.bold,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  Container(
                                    height: 44.sp,
                                    width: 44.sp,
                                    padding: EdgeInsets.all(12.sp),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.sp), gradient: LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight), boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 10.sp),
                                        color: const Color(0xff10141C).withOpacity(0.5),
                                        blurRadius: 10.sp,
                                      )
                                    ]),
                                    child: Image.asset("icons/ic_search.png"),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),

                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    /// offer section
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                                      child: CustomPaint(
                                        painter: OfferSectionShapeMaker(),
                                        child: GestureDetector(
                                          onTap: (){
                                            Get.to(() => const ProductDetailsScreenUI(),arguments: {"selectedProduct" : ProductDataModel(title: "PEUGEOT - LR",type: "Road Bike",price: "\$ 1,999.99",image: "images/img_bicycle1.png",isFav: false)});
                                          },
                                          child: Hero(
                                            tag: "PEUGEOT - LR",
                                            child: Container(
                                              height: 250.sp,
                                              width: double.infinity,
                                              padding: EdgeInsets.all(10.sp),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 10.sp),
                                                  Image.asset("images/img_bicycle1.png"),
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 15.w),
                                                      child: CustomText(
                                                        text: "30% Off",
                                                        color: Colors.white.withOpacity(0.6),
                                                        style: FontFamily.bold,
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 26.sp,
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.sp),

                                    /// tab bar section
                                    Transform.rotate(
                                      angle: -0.15,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Transform.rotate(
                                              angle: 0.16,
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.selectedTabIndex.value = 0;
                                                },
                                                child: Container(
                                                  height: 50.sp,
                                                  width: 50.sp,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.sp),
                                                      gradient: controller.selectedTabIndex.value == 0
                                                          ? LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight)
                                                          : LinearGradient(colors: MyGradientColors.primaryButtonBlackGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          offset: Offset(0, 10.sp),
                                                          color: const Color(0xff10141C).withOpacity(0.5),
                                                          blurRadius: 10.sp,
                                                        )
                                                      ]),
                                                  alignment: Alignment.center,
                                                  child: CustomText(
                                                    text: "All",
                                                    fontSize: 13.sp,
                                                    style: FontFamily.medium,
                                                    color: controller.selectedTabIndex.value == 0 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 0.16,
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.selectedTabIndex.value = 1;
                                                },
                                                child: Container(
                                                    height: 50.sp,
                                                    width: 50.sp,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10.sp),
                                                        gradient: controller.selectedTabIndex.value == 1
                                                            ? LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight)
                                                            : LinearGradient(colors: MyGradientColors.primaryButtonBlackGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset: Offset(0, 10.sp),
                                                            color: const Color(0xff10141C).withOpacity(0.5),
                                                            blurRadius: 10.sp,
                                                          )
                                                        ]),
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(10.sp),
                                                    child: Image.asset(
                                                      "icons/ic_cycle.png",
                                                      color: controller.selectedTabIndex.value == 1 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                                    )),
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 0.16,
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.selectedTabIndex.value = 2;
                                                },
                                                child: Container(
                                                    height: 50.sp,
                                                    width: 50.sp,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10.sp),
                                                        gradient: controller.selectedTabIndex.value == 2
                                                            ? LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight)
                                                            : LinearGradient(colors: MyGradientColors.primaryButtonBlackGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset: Offset(0, 10.sp),
                                                            color: const Color(0xff10141C).withOpacity(0.5),
                                                            blurRadius: 10.sp,
                                                          )
                                                        ]),
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(10.sp),
                                                    child: Image.asset(
                                                      "icons/ic_road.png",
                                                      color: controller.selectedTabIndex.value == 2 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                                    )),
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 0.16,
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.selectedTabIndex.value = 3;
                                                },
                                                child: Container(
                                                    height: 50.sp,
                                                    width: 50.sp,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10.sp),
                                                        gradient: controller.selectedTabIndex.value == 3
                                                            ? LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight)
                                                            : LinearGradient(colors: MyGradientColors.primaryButtonBlackGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset: Offset(0, 10.sp),
                                                            color: const Color(0xff10141C).withOpacity(0.5),
                                                            blurRadius: 10.sp,
                                                          )
                                                        ]),
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(13.sp),
                                                    child: Image.asset(
                                                      "icons/ic_mountains.png",
                                                      color: controller.selectedTabIndex.value == 3 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                                    )),
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: 0.16,
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.selectedTabIndex.value = 4;
                                                },
                                                child: Container(
                                                    height: 50.sp,
                                                    width: 50.sp,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10.sp),
                                                        gradient: controller.selectedTabIndex.value == 4
                                                            ? LinearGradient(colors: MyGradientColors.primaryBlueGradient, begin: Alignment.topLeft, end: Alignment.bottomRight)
                                                            : LinearGradient(colors: MyGradientColors.primaryButtonBlackGradient, begin: Alignment.topLeft, end: Alignment.bottomRight),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            offset: Offset(0, 10.sp),
                                                            color: const Color(0xff10141C).withOpacity(0.5),
                                                            blurRadius: 10.sp,
                                                          )
                                                        ]),
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(15.sp),
                                                    child: Image.asset(
                                                      "icons/ic_bikeHelmet.png",
                                                      color: controller.selectedTabIndex.value == 4 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    /// item data list
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                                        child: GridView.builder(
                                            itemCount: controller.itemList.length,
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              childAspectRatio: 0.7,
                                              crossAxisSpacing: 35.sp,
                                              mainAxisSpacing: 0.sp,
                                            ),
                                            itemBuilder: (context, index) {
                                              ProductDataModel item = controller.itemList[index];
                                              return CustomPaint(
                                                painter: index % 2 == 0 ? EvenProductViewShapeMaker() : OddProductViewShapeMaker(),
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Get.to(() => const ProductDetailsScreenUI(),arguments: {"selectedProduct" : item});
                                                  },
                                                  child: Hero(
                                                    tag: "${item.title}",
                                                    transitionOnUserGestures: true,
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 0.h),
                                                      margin: EdgeInsets.only(top: index % 2 == 0 ? 45.h : 13.h, bottom: index % 2 == 0 ? 0 : 30.h),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment.centerRight,
                                                            child: GestureDetector(
                                                              onTap: (){
                                                                item.isFav = !(item.isFav ?? true);
                                                                controller.itemList.refresh();
                                                              },
                                                              child: Container(
                                                                height: 24.sp,
                                                                width: 24.sp,
                                                                color: Colors.transparent,
                                                                child: Image.asset(item.isFav ?? false ? "icons/ic_selectedHeart.png" : "icons/ic_heart.png"),
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(child: Align(alignment: Alignment.center,child: Image.asset(item.image ?? '', height: 90.sp))),
                                                          SizedBox(height: 10.h),
                                                          CustomText(text: item.type ?? '', color: Colors.white.withOpacity(0.6), style: FontFamily.medium, fontSize: 13.sp),
                                                          CustomText(text: item.title ?? '', style: FontFamily.bold, fontSize: 15.sp, fontWeight: FontWeight.w700),
                                                          CustomText(text: item.price ?? '', color: Colors.white.withOpacity(0.6), style: FontFamily.medium, fontSize: 13.sp),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                                    SizedBox(height: 50.sp)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h)
                          ],
                        ),
                      ),
                    ),

                    /// custom bottom navigation section
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        /// Bottom navigation bar shape section
                        CustomPaint(
                          painter: BottomNavigationBarPainter(),
                          child: SizedBox(
                            height: 75.h,
                            width: double.infinity,
                          ),
                        ),

                        /// Bottom navigation bar item section
                        Container(
                          margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom / 3),
                          padding: EdgeInsets.symmetric(horizontal: 17.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.onChangedSelectedIndex(0);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  padding: controller.selectedNavigationIndex.value == 0 ? EdgeInsets.only(bottom: 15.h) : null,
                                  child: CustomPaint(
                                    painter: controller.selectedNavigationIndex.value == 0 ? BottomNavigationBarItemPainter() : null,
                                    child: Container(
                                      height: 60.sp,
                                      width: 50.sp,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(10.sp),
                                      child: Image.asset(
                                        "icons/ic_cycle.png",
                                        color: controller.selectedNavigationIndex.value == 0 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                        height: 28.sp,
                                        width: 28.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.onChangedSelectedIndex(1);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  padding: controller.selectedNavigationIndex.value == 1 ? EdgeInsets.only(bottom: 15.h) : null,
                                  child: CustomPaint(
                                    painter: controller.selectedNavigationIndex.value == 1 ? BottomNavigationBarItemPainter() : null,
                                    child: Container(
                                      height: 60.sp,
                                      width: 50.sp,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(15.sp),
                                      child: Image.asset(
                                        "icons/ic_map.png",
                                        color: controller.selectedNavigationIndex.value == 1 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                        height: 28.sp,
                                        width: 28.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.onChangedSelectedIndex(2);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  padding: controller.selectedNavigationIndex.value == 2 ? EdgeInsets.only(bottom: 15.h) : null,
                                  child: CustomPaint(
                                    painter: controller.selectedNavigationIndex.value == 2 ? BottomNavigationBarItemPainter() : null,
                                    child: Container(
                                      height: 60.sp,
                                      width: 50.sp,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(13.sp),
                                      child: Image.asset(
                                        "icons/ic_cart.png",
                                        color: controller.selectedNavigationIndex.value == 2 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                        height: 28.sp,
                                        width: 28.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.onChangedSelectedIndex(3);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  padding: controller.selectedNavigationIndex.value == 3 ? EdgeInsets.only(bottom: 15.h) : null,
                                  child: CustomPaint(
                                    painter: controller.selectedNavigationIndex.value == 3 ? BottomNavigationBarItemPainter() : null,
                                    child: Container(
                                      height: 60.sp,
                                      width: 50.sp,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(15.sp),
                                      child: Image.asset(
                                        "icons/ic_profile.png",
                                        color: controller.selectedNavigationIndex.value == 3 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                        height: 28.sp,
                                        width: 28.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.onChangedSelectedIndex(4);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  padding: controller.selectedNavigationIndex.value == 4 ? EdgeInsets.only(bottom: 15.h) : null,
                                  child: CustomPaint(
                                    painter: controller.selectedNavigationIndex.value == 4 ? BottomNavigationBarItemPainter() : null,
                                    child: Container(
                                      height: 60.sp,
                                      width: 50.sp,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(16.sp),
                                      child: Image.asset(
                                        "icons/ic_doc.png",
                                        color: controller.selectedNavigationIndex.value == 4 ? MyAppColors.primaryWhiteColor : MyAppColors.primaryWhiteColor.withOpacity(0.6),
                                        height: 28.sp,
                                        width: 28.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
