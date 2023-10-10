import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:bicycle_shopping_app/core/core.dart';

class ProductDetailsScreenUI extends StatelessWidget {
  const ProductDetailsScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ProductDetailsScreenController>(
        init: ProductDetailsScreenController(),
        builder: (controller) {
          return Scaffold(
            body: CustomPaint(
              painter: CustomProductDetailsBGShape(),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SafeArea(
                  bottom: false,
                  child: Hero(
                    tag: "${controller.dataModel.value.title}",
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// title and search section
                        Container(
                          height: 44.sp,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 44.sp,
                                  width: 44.sp,
                                  padding: EdgeInsets.all(12.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    gradient: LinearGradient(
                                      colors: MyGradientColors.primaryBlueGradient,
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 10.sp),
                                        color: const Color(0xff10141C).withOpacity(0.5),
                                        blurRadius: 10.sp,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset("icons/ic_backArrow.png"),
                                ),
                              ),
                              Expanded(
                                child: CustomText(
                                  text: controller.dataModel.value.title ?? '',
                                  fontSize: 20.sp,
                                  style: FontFamily.bold,
                                  fontWeight: FontWeight.w700,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 44.sp,
                                width: 44.sp,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 34.sp),

                        /// product image section
                        Container(
                          height: 180.sp,
                          alignment: Alignment.center,
                          child: Image.asset(controller.dataModel.value.image ?? ''),
                        ),
                        SizedBox(
                          height: 54.sp,
                        ),

                        /// product details section
                        CustomPaint(
                          painter: ProductDetailsSheetShape(),
                          child: SizedBox(
                            height: Get.height - (Get.mediaQuery.padding.top + 312.sp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 30.sp),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 30.sp
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.isDescriptionSelected.value = true;
                                                },
                                                child: Container(
                                                  height: 50.sp,
                                                  decoration: BoxDecoration(
                                                      color: controller.isDescriptionSelected.value ? const Color(0xff323B4F) : const Color(0xff2E374A),
                                                      borderRadius: BorderRadius.circular(10.sp),
                                                      boxShadow: controller.isDescriptionSelected.value
                                                          ? [
                                                              BoxShadow(offset: Offset(4.sp, 4.sp), color: const Color(0xff222834), blurRadius: 10.sp, spreadRadius: 1),
                                                              BoxShadow(offset: Offset(-4.sp, -4.sp), color: const Color(0xff38445A), blurRadius: 10.sp, spreadRadius: 1)
                                                            ]
                                                          : null),
                                                  alignment: Alignment.center,
                                                  child: controller.isDescriptionSelected.value
                                                      ? GradientText(
                                                          text: 'Description',
                                                          gradient: const LinearGradient(
                                                            colors: [Color(0xff3CA4EB), Color(0xff4286EE)],
                                                          ),
                                                          style: FontFamily.bold,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18.sp,
                                                        )
                                                      : CustomText(
                                                          text: 'Description',
                                                          fontWeight: FontWeight.w400,
                                                          color: Colors.white.withOpacity(0.6),
                                                        ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 30.w),
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  controller.isDescriptionSelected.value = false;
                                                },
                                                child: Container(
                                                  height: 50.sp,
                                                  decoration: BoxDecoration(
                                                      color: !controller.isDescriptionSelected.value ? const Color(0xff323B4F) : const Color(0xff2E374A),
                                                      borderRadius: BorderRadius.circular(10.sp),
                                                      boxShadow: !controller.isDescriptionSelected.value
                                                          ? [
                                                              BoxShadow(offset: Offset(4.sp, 4.sp), color: const Color(0xff222834), blurRadius: 10.sp, spreadRadius: 1),
                                                              BoxShadow(offset: Offset(-4.sp, -4.sp), color: const Color(0xff38445A), blurRadius: 10.sp, spreadRadius: 1)
                                                            ]
                                                          : null),
                                                  alignment: Alignment.center,
                                                  child: !controller.isDescriptionSelected.value
                                                      ? GradientText(
                                                          text: 'Specification',
                                                          gradient: const LinearGradient(
                                                            colors: [Color(0xff3CA4EB), Color(0xff4286EE)],
                                                          ),
                                                          style: FontFamily.bold,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18.sp,
                                                        )
                                                      : CustomText(
                                                          text: 'Specification',
                                                          fontWeight: FontWeight.w400,
                                                          color: Colors.white.withOpacity(0.6),
                                                        ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30.sp
                                        ),
                                        CustomText(
                                          text: controller.dataModel.value.title ?? '',
                                          fontWeight: FontWeight.w700,
                                          style: FontFamily.bold,
                                          fontSize: 20.sp,
                                        ),
                                        SizedBox(
                                          height: 8.sp,
                                        ),
                                        CustomText(
                                          text:
                                              "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white.withOpacity(0.6),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                CustomPaint(
                                  painter: ProductPriceShape(),
                                  child: Container(
                                    height: 80.sp,
                                    width: double.infinity,
                                    margin: EdgeInsets.only(bottom: 10.sp),
                                    padding: EdgeInsets.symmetric(horizontal: 35.w),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              controller.isDescriptionSelected.value = true;
                                            },
                                            child: Container(
                                              height: 50.sp,
                                              alignment: Alignment.center,
                                              child: CustomText(
                                                text: controller.dataModel.value.price ?? '',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 22.sp,
                                                color: const Color(0xff3D9CEA),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 30.w),
                                        Expanded(
                                          child: CustomPaint(
                                            painter: AddToCardButtonShape(),
                                            child: Container(
                                              height: 50.sp,
                                              alignment: Alignment.center,
                                              child: const CustomText(text: 'Add to Cart'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
