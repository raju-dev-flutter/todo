import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  const ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgCard,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 89.adaptSize,
            width: 89.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage38x57,
              height: 38.v,
              width: 57.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 1.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_shimla_apple".tr,
                  style: CustomTextStyles.bodyLargeGray80001,
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_1_kg".tr,
                  style: CustomTextStyles.bodyMediumGray60003,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    Text(
                      "lbl_2".tr,
                      style: CustomTextStyles.titleMediumHelveticaGray80001,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_3_25".tr,
                        style: CustomTextStyles.bodyLargeHelveticaGray40003
                            .copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClose,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                SizedBox(height: 52.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVolumePrimary,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_12".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlusPrimary,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
