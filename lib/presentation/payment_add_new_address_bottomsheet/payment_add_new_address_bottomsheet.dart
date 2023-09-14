import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_checkbox_button.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentAddNewAddressBottomsheet extends StatelessWidget {
  PaymentAddNewAddressBottomsheet({Key? key}) : super(key: key);

  TextEditingController countryController = TextEditingController();

  TextEditingController statevalueoneController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areavalueoneController = TextEditingController();

  TextEditingController landmarkvalueController = TextEditingController();

  bool secondaryAddres = false;

  bool workAddress = false;

  bool otherAddress = false;

  bool secondaryaddres = false;

  bool secondaryaddres1 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 20.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgCloseBlack90001,
                  height: 24.v,
                  width: 23.h,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapImgCloseone(context);
                  }),
              SizedBox(height: 23.v),
              Text("lbl_add_new_address".tr,
                  style: CustomTextStyles.titleLargePrimarySemiBold),
              SizedBox(height: 24.v),
              CustomTextFormField(
                  controller: countryController,
                  hintText: "lbl_country".tr,
                  hintStyle: theme.textTheme.bodyLarge!),
              SizedBox(height: 16.v),
              CustomTextFormField(
                  controller: statevalueoneController,
                  hintText: "lbl_state".tr,
                  hintStyle: theme.textTheme.bodyLarge!),
              SizedBox(height: 16.v),
              CustomTextFormField(
                  controller: cityController,
                  hintText: "lbl_city".tr,
                  hintStyle: theme.textTheme.bodyLarge!),
              SizedBox(height: 16.v),
              CustomTextFormField(
                  controller: pincodeController,
                  hintText: "lbl_pincode".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputType: TextInputType.number,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.h)),
              SizedBox(height: 15.v),
              CustomTextFormField(
                  controller: areavalueoneController,
                  hintText: "lbl_area".tr,
                  hintStyle: theme.textTheme.bodyLarge!),
              SizedBox(height: 16.v),
              CustomTextFormField(
                  controller: landmarkvalueController,
                  hintText: "lbl_landmark".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputAction: TextInputAction.done),
              SizedBox(height: 14.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      height: 36.v,
                      width: 297.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: CustomCheckboxButton(
                                alignment: Alignment.topLeft,
                                text: "lbl_home".tr,
                                value: secondaryAddres,
                                margin: EdgeInsets.only(top: 1.v),
                                onChange: (value) {
                                  secondaryAddres = value;
                                })),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: CustomCheckboxButton(
                                alignment: Alignment.centerLeft,
                                text: "lbl_work_office".tr,
                                isExpandedText: true,
                                value: workAddress,
                                margin: EdgeInsets.only(left: 91.h),
                                onChange: (value) {
                                  workAddress = value;
                                })),
                        Align(
                            alignment: Alignment.topRight,
                            child: CustomCheckboxButton(
                                alignment: Alignment.topRight,
                                text: "lbl_other".tr,
                                value: otherAddress,
                                margin: EdgeInsets.only(top: 1.v),
                                onChange: (value) {
                                  otherAddress = value;
                                })),
                        Align(
                            alignment: Alignment.topLeft,
                            child: CustomCheckboxButton(
                                alignment: Alignment.topLeft,
                                width: 83.h,
                                text: "lbl_home".tr,
                                value: secondaryaddres,
                                margin: EdgeInsets.only(left: 25.h, top: 1.v),
                                isRightCheck: true,
                                onChange: (value) {
                                  secondaryaddres = value;
                                })),
                        Align(
                            alignment: Alignment.topLeft,
                            child: CustomCheckboxButton(
                                alignment: Alignment.topLeft,
                                width: 222.h,
                                text: "lbl_home".tr,
                                value: secondaryaddres1,
                                margin: EdgeInsets.only(left: 25.h, top: 1.v),
                                isRightCheck: true,
                                onChange: (value) {
                                  secondaryaddres1 = value;
                                }))
                      ]))),
              SizedBox(height: 13.v),
              CustomElevatedButton(width: 199.h, text: "lbl_save".tr),
              SizedBox(height: 27.v)
            ])));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
