import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';

class WidgetConstants {
  // Authentication Journey Constant Button
  static Widget authenticationButton(String name, Function()? redirectTo) {
    return Container(
      height: 5.5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient:
            const LinearGradient(colors: ColorConstants.gradientColorList),
      ),
      child: TextButton(
        onPressed: redirectTo!,
        style: TextButton.styleFrom(
          foregroundColor: ColorConstants.whiteColor,
          textStyle:
              const TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
        ),
        child: Text(name),
      ),
    );
  }

  static Widget activityTopics(String topicImgs, String picText) {
    return Container(
      alignment: Alignment.center,
      width: 36.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(topicImgs),
        ),
      ),
      child: CustomTextWidget(
        picText,
        fontSize: 10.5,
        fontWeight: FontWeight.w700,
        color: ColorConstants.whiteColor,
      ),
    );
  }

  static Widget activityCollections(
      String topicImg, String picImgText, String picText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 38.w,
          height: 17.8.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(topicImg),
            ),
          ),
          child: CustomTextWidget(
            picImgText,
            textAlign: TextAlign.center,
            fontSize: 11,
            color: ColorConstants.whiteColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 0.7.h,
        ),
        CustomTextWidget(
          picText,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: ColorConstants.discoverCollectionTextColor,
        )
      ],
    );
  }

  static Widget buildActivity(
      int index, Widget isImgOrBtn, Color notifyColor, String accntImg) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.2.h),
      padding: const EdgeInsets.only(left: 16, top: 14, bottom: 14, right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: notifyColor,
      ),
      width: double.infinity,
      height: 11.5.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            accntImg,
          ),
          SizedBox(
            width: 4.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomTextWidget(
                TextConstant.activityNotifyUserNameTxt,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: ColorConstants.themeTextBlackColor,
              ),
              SizedBox(
                height: 0.5.h,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                  children: <TextSpan>[
                    TextSpan(
                      text: TextConstant.activityNotifyRichTxt1,
                      style: TextStyle(
                        color: ColorConstants.themeTextBlackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: TextConstant.activityNotifyRichTxt2,
                      style: TextStyle(
                        color: ColorConstants.authThemeTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const CustomTextWidget(
                TextConstant.activityNotifyTimeTxt,
                fontSize: 9,
                color: ColorConstants.fadedTextColor,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const Spacer(),
          isImgOrBtn,
        ],
      ),
    );
  }
}
