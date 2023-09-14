import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_checkbox_button.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class AddNewAddressScreen extends StatelessWidget {
  AddNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController countryController = TextEditingController();

  TextEditingController statevalueoneController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areavalueoneController = TextEditingController();

  TextEditingController landmarkvalueController = TextEditingController();

  bool groupSixtyNine = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 29.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgForwardOnprimarycontainer,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 14.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_add_new_address".tr,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10.v),
            padding: EdgeInsets.all(48.h),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  controller: countryController,
                  hintText: "lbl_country".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: statevalueoneController,
                  hintText: "lbl_state".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: cityController,
                  hintText: "lbl_city".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: pincodeController,
                  hintText: "lbl_pincode".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: areavalueoneController,
                  hintText: "lbl_area".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 16.v),
                CustomTextFormField(
                  controller: landmarkvalueController,
                  hintText: "lbl_landmark".tr,
                  hintStyle: theme.textTheme.bodyLarge!,
                  textInputAction: TextInputAction.done,
                ),
                CustomCheckboxButton(
                  width: 297.h,
                  value: groupSixtyNine,
                  margin: EdgeInsets.only(
                    top: 15.v,
                    right: 34.h,
                  ),
                  isRightCheck: true,
                  onChange: (value) {
                    groupSixtyNine = value;
                  },
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  width: 199.h,
                  text: "lbl_save".tr,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
