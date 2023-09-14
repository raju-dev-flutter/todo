import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AmulgoldmilkItemWidget extends StatelessWidget {
  const AmulgoldmilkItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 119.v,
      width: 400.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCardOnprimarycontainer,
            height: 119.v,
            width: 396.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 105.v,
              width: 377.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomElevatedButton(
                    height: 43.v,
                    width: 159.h,
                    text: "lbl_m".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCardPrimary,
                      ),
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgRound,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimary1,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallOnPrimaryContainerBold,
                    alignment: Alignment.bottomRight,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 18.h,
                        bottom: 15.v,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 89.adaptSize,
                            width: 89.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 13.v,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage63x65,
                              height: 63.v,
                              width: 65.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 22.h,
                              bottom: 14.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_amul_gold_milk".tr,
                                  style: CustomTextStyles.titleMediumGray700c6,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "lbl_500_ml".tr,
                                  style: CustomTextStyles.bodyMediumGray50004_1,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles
                                      .titleMediumHelveticaGray80001,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 72.v),
                            child: Text(
                              "lbl_qty_2".tr,
                              style: CustomTextStyles.titleSmallGray50004,
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
        ],
      ),
    );
  }
}
