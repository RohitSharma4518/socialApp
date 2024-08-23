import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:social/Modules/SIgnup/signup_controller.dart';
import 'package:social/Routes/app_routes.dart';
import 'package:social/Utils/Constants/asset_constant.dart';
import 'package:social/Utils/Constants/color_constant.dart';
import 'package:social/Utils/Constants/text_constant.dart';
import 'package:social/Utils/Constants/widget_constant.dart';
import 'package:social/Utils/Widgets/custom_text_widget.dart';
import 'package:social/Utils/Widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  SignupController signupController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                fit: BoxFit.cover,
                AssetConstant.authImg,
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CustomTextWidget(
                      TextConstant.authImgTxt1,
                      color: ColorConstants.whiteColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const CustomTextWidget(
                      TextConstant.authImgTxt2,
                      color: ColorConstants.whiteColor,
                      fontSize: 30,
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(8.w, 4.8.h, 8.w, 6.3.h),
              decoration: const BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      hintText: TextConstant.authTxtField1Txt,
                      keyboardInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 2.h),
                    Obx(
                      () => CustomPassTextField(
                        obscureText: signupController.passwordVisible1.value,
                        hintText: TextConstant.authTxtField2Txt,
                        suffixIcon: IconButton(
                          onPressed: () {
                            signupController.passwordVisible1.value =
                                !signupController.passwordVisible1.value;
                          },
                          icon: Icon(
                            signupController.passwordVisible1.value
                                ? Icons.visibility_off_outlined
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Obx(
                      () => CustomPassTextField(
                        obscureText: signupController.passwordVisible2.value,
                        hintText: TextConstant.authTxtField3Txt,
                        suffixIcon: IconButton(
                          onPressed: () {
                            signupController.passwordVisible2.value =
                                !signupController.passwordVisible2.value;
                          },
                          icon: Icon(
                            signupController.passwordVisible2.value
                                ? Icons.visibility_off_outlined
                                : Icons.remove_red_eye_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 4.5.h),
                    WidgetConstants.authenticationButton("SIGN UP", () {
                      Get.toNamed(AppRoutes.loginScreen);
                    }),
                    SizedBox(height: 4.5.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          const TextSpan(
                            text: TextConstant.authRichTxt2,
                            style: TextStyle(
                              color: ColorConstants.authOptionTextColor,
                            ),
                          ),
                          TextSpan(
                            text: TextConstant.authBtnTxt2,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.loginScreen);
                              },
                            style: const TextStyle(
                              color: ColorConstants.authThemeTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.4.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
