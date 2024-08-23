import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/color_constant.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? counterText;
  final TextInputType? keyboardInputType;
  final TextInputAction? textInputAction;

  const CustomTextField({
    this.textEditingController,
    this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.counterText,
    this.keyboardInputType,
    this.textInputAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        color: ColorConstants.textFieldColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: TextFormField(
          controller: textEditingController,
          obscureText: obscureText ?? false,
          keyboardType: keyboardInputType,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(
              fontSize: 16.0,
              color: ColorConstants.fadedTextColor,
            ),
            contentPadding: EdgeInsets.only(left: 4.w, right: 4.w),
          ),
          textInputAction: textInputAction,
        ),
      ),
    );
  }
}

class CustomPassTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? counterText;
  final TextInputType? keyboardInputType;
  final TextInputAction? textInputAction;

  const CustomPassTextField({
    this.textEditingController,
    this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.counterText,
    this.keyboardInputType,
    this.textInputAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        color: ColorConstants.textFieldColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: TextFormField(
          controller: textEditingController,
          obscureText: obscureText ?? false,
          keyboardType: keyboardInputType,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: suffixIcon ?? const SizedBox(),
            hintStyle: const TextStyle(
              fontSize: 16.0,
              color: ColorConstants.fadedTextColor,
            ),
            contentPadding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.4.h),
          ),
          textInputAction: textInputAction,
        ),
      ),
    );
  }
}
