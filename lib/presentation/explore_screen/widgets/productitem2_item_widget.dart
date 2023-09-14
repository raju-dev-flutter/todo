import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productitem2ItemWidget extends StatelessWidget {
  const Productitem2ItemWidget({Key? key})
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
          SizedBox(height: 10.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage50x62,
            height: 50.v,
            width: 62.h,
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_parle_rusk".tr,
                    style: CustomTextStyles.labelLargeGray700,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_500_g".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_3".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 22.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.all(7.h),
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
