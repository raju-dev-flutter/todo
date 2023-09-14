import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class FruitprofileItemWidget extends StatelessWidget {
  const FruitprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgFavorite,
            height: 26.v,
            width: 25.h,
            alignment: Alignment.centerRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage52x71,
            height: 79.v,
            width: 107.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              Text(
                "lbl_strawberry".tr,
                style: CustomTextStyles.titleMediumGray700,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                ),
                child: Text(
                  "lbl_1_kg2".tr,
                  style: CustomTextStyles.titleSmallGray700,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Text(
                "lbl_4".tr,
                style: theme.textTheme.titleMedium,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgVolumePrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 94.h,
                  top: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl_12".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgPlusPrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "lbl_subscribe".tr,
                  style: CustomTextStyles.labelLargeOnPrimaryContainer,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "lbl_buy_once".tr,
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
