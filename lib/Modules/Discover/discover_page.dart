import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});
  @override
  State<DiscoverPage> createState() {
    return _DiscoverPageState();
  }
}

class _DiscoverPageState extends State<DiscoverPage> {
  final Shader linearGradient = const LinearGradient(
    colors: ColorConstants.gradientColorList,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 4.4.h,
            width: 9.2.w,
            decoration: BoxDecoration(
              color: ColorConstants.homeAppBarColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(AssetConstant.appBarIcon),
          ),
          SizedBox(
            width: 4.w,
          )
        ],
        automaticallyImplyLeading: false,
        title: Container(
          height: 4.2.h,
          decoration: BoxDecoration(
            color: ColorConstants.homeAppBarColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: TextConstant.homeAppBarTxt,
              hintStyle: TextStyle(
                color: ColorConstants.fadedTextColor,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xff888BF4),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 2.1.h, left: 5.w),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 3.w, bottom: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTextWidget(
                        TextConstant.discoverTopicTxt1,
                        color: ColorConstants.themeTextBlackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                      CustomTextWidget(
                        TextConstant.discoverGradientTxt,
                        fontSize: 10.4,
                        fontWeight: FontWeight.w500,
                        foregroundColor: Paint()..shader = linearGradient,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 11.2.h,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    WidgetConstants.activityTopics(AssetConstant.discoverTopic1,
                        TextConstant.discoverTopicsImgTxt1),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityTopics(AssetConstant.discoverTopic2,
                        TextConstant.discoverTopicsImgTxt2),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityTopics(AssetConstant.discoverTopic3,
                        TextConstant.discoverTopicsImgTxt1),
                    SizedBox(
                      width: 3.5.w,
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 2.7.h,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 3.w, bottom: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTextWidget(
                        TextConstant.discoverCollectionTxt,
                        color: ColorConstants.themeTextBlackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                      CustomTextWidget(
                        TextConstant.discoverGradientTxt,
                        fontSize: 10.4,
                        fontWeight: FontWeight.w500,
                        foregroundColor: Paint()..shader = linearGradient,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.8.h,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt1,
                      TextConstant.discoverCollectionsTxt1,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt2,
                      TextConstant.discoverCollectionsTxt2,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt2,
                      TextConstant.discoverCollectionsTxt2,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 2.6.h,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 3.w, bottom: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTextWidget(
                        TextConstant.discoverCollectionTxt,
                        color: ColorConstants.themeTextBlackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                      CustomTextWidget(
                        TextConstant.discoverGradientTxt,
                        fontSize: 10.4,
                        fontWeight: FontWeight.w500,
                        foregroundColor: Paint()..shader = linearGradient,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.8.h,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt1,
                      TextConstant.discoverCollectionsTxt1,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt2,
                      TextConstant.discoverCollectionsTxt2,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    WidgetConstants.activityCollections(
                      AssetConstant.discoverCollection,
                      TextConstant.discoverCollectionsImgTxt2,
                      TextConstant.discoverCollectionsTxt2,
                    ),
                    SizedBox(
                      width: 3.5.w,
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 2.6.h,
            ),
          ],
        ),
      ),
    );
  }
}
