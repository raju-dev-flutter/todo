import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class DeliverystatusItemWidget extends StatelessWidget {
  const DeliverystatusItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage55x59,
            height: 55.v,
            width: 59.h,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Container(
            height: 55.v,
            width: 53.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage79x79,
                  height: 54.v,
                  width: 52.h,
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 55.v,
                  width: 53.h,
                  text: "lbl_13".tr,
                  buttonStyle: CustomButtonStyles.fillGrayD,
                  buttonTextStyle: theme.textTheme.headlineMedium!,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 17.v,
              bottom: 18.v,
            ),
            child: Text(
              "msg_delivered_on_23".tr,
              style: CustomTextStyles.titleMediumBlack9000116,
            ),
          ),
        ],
      ),
    );
  }
}
