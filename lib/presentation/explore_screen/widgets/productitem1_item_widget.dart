import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productitem1ItemWidget extends StatelessWidget {
  const Productitem1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.v),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage57x46,
            height: 57.v,
            width: 46.h,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 10.v,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 52.v,
            width: 98.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 6.v),
                  padding: EdgeInsets.all(7.h),
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_a2mate_milk".tr,
                        style: CustomTextStyles.labelLargeGray700,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_0_5_ltr".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_2".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
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
