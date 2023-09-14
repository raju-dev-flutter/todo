import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class FortunericeItemWidget extends StatelessWidget {
  const FortunericeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 192.v,
          width: 162.h,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage92x86,
                        height: 92.v,
                        width: 86.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_fortune_rice".tr,
                        style: CustomTextStyles.titleMediumGray80001,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "lbl_3_kg".tr,
                        style: CustomTextStyles
                            .titleMediumMicrosoftNewTaiLueGray80001,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 41.v,
                  width: 58.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgMenuPrimary,
                        height: 41.v,
                        width: 58.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_37".tr,
                                style: CustomTextStyles
                                    .titleSmallOnPrimaryContainer,
                              ),
                              Text(
                                "lbl_off".tr,
                                style: CustomTextStyles
                                    .titleSmallOnPrimaryContainer,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
