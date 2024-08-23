import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final Shader linearGradient = const LinearGradient(
    colors: ColorConstants.gradientColorList,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 44.w,
        scrolledUnderElevation: 0.0,
        backgroundColor: ColorConstants.whiteColor,
        toolbarHeight: 5.4.h,
        leading: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
            children: <TextSpan>[
              TextSpan(
                text: TextConstant.activityNavRichTxt1,
                style: TextStyle(
                  color: ColorConstants.themeTextBlackColor,
                ),
              ),
              TextSpan(
                text: TextConstant.activityNavRichTxt2,
                style: TextStyle(
                  color: ColorConstants.authThemeTextColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5.w, bottom: 1.8.h),
            child: const Icon(
              Icons.settings_outlined,
              color: ColorConstants.activitySettingIconColor,
              size: 26,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16, right: 14, left: 14),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index % 3 == 0) {
              return WidgetConstants.buildActivity(
                  index,
                  Image.asset(
                    AssetConstant.activityLikedPic,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                  ColorConstants.forgotPassPromtColor,
                  AssetConstant.homeAccount1);
            } else if (index % 3 == 1) {
              return WidgetConstants.buildActivity(
                  index,
                  Image.asset(
                    AssetConstant.activityLikedPic,
                    width: 24.w,
                    fit: BoxFit.fill,
                  ),
                  ColorConstants.activityNotificationColor,
                  AssetConstant.homeAccount2);
            } else {
              return WidgetConstants.buildActivity(
                  index,
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: ColorConstants.whiteColor,
                      side: const BorderSide(
                        color: ColorConstants.authThemeTextColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: CustomTextWidget(
                      TextConstant.activityNotifyBtnTxt,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      foregroundColor: Paint()..shader = linearGradient,
                    ),
                  ),
                  ColorConstants.forgotPassPromtColor,
                  AssetConstant.homeAccount2);
            }
          },
        ),
      ),
    );
  }
}
