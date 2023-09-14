import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ItemItemWidget extends StatelessWidget {
  const ItemItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 9.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage55x76,
            height: 55.v,
            width: 76.h,
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_tomato".tr,
                    style: CustomTextStyles.labelLargeGray700,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_1_kg".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_2".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              CustomIconButton(
                height: 23.v,
                width: 24.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 22.v,
                  bottom: 6.v,
                ),
                padding: EdgeInsets.all(6.h),
                child: CustomImageView(
                  svgPath: ImageConstant.imgPlus,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
