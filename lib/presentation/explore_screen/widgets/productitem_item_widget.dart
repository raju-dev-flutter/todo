import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductitemItemWidget extends StatelessWidget {
  const ProductitemItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage69x69,
            height: 69.adaptSize,
            width: 69.adaptSize,
          ),
          SizedBox(height: 5.v),
          Text(
            "lbl_jaggery_powder".tr,
            style: CustomTextStyles.labelLargeGray700,
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  left: 40.h,
                  top: 2.v,
                  bottom: 6.v,
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
