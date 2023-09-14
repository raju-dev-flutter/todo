import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class Category1ItemWidget extends StatelessWidget {
  const Category1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 87.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 88.v,
              width: 87.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage65x75,
                  height: 65.v,
                  width: 75.h,
                ),
                SizedBox(height: 22.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL5,
                  ),
                  child: Text(
                    "lbl_groecries".tr,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
