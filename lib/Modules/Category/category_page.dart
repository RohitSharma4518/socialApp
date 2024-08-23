import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Routes/app_routes.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final Shader linearGradient = const LinearGradient(
    colors: ColorConstants.gradientColorList,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  AssetConstant.categoryTopImg,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: const CustomTextWidget(
                    TextConstant.authImgTxt1,
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.8.h),
            const CustomTextWidget(
              TextConstant.catgryHeadTxt,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: ColorConstants.themeTextBlackColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 4.5.w,
                mainAxisSpacing: 2.4.h,
                childAspectRatio: 0.9,
                children: [
                  buildCategoryItem(
                    AssetConstant.category1,
                    TextConstant.catgry1Txt,
                  ),
                  buildCategoryItem(
                    AssetConstant.category2,
                    TextConstant.catgry2Txt,
                  ),
                  buildCategoryItem(
                    AssetConstant.category3,
                    TextConstant.catgry3Txt,
                  ),
                  buildCategoryItem(
                    AssetConstant.category4,
                    TextConstant.catgry4Txt,
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.5.h),
            CustomTextWidget(
              TextConstant.catgryGradientTxt,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              letterSpacing: 2.0,
              foregroundColor: Paint()..shader = linearGradient,
            ),
            SizedBox(
              height: 4.2.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 6.w, right: 6.w),
              width: double.infinity,
              child: WidgetConstants.authenticationButton(
                  TextConstant.catgryBtnTxt, () {
                Get.toNamed(AppRoutes.navbarScreen);
              }),
            ),
          ],
        ),
      ),
    );
  }

// onPressed: () {
//                     Get.toNamed(AppRoutes.navbarScreen);
//                   },

  Widget buildCategoryItem(String imagePath, String categoryTitle) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(imagePath),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Text(
          categoryTitle,
          style: const TextStyle(
            color: ColorConstants.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
