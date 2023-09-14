import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_phone_number.dart';
import 'package:todo/widgets/custom_radio_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController promoCodeController = TextEditingController();

  TextEditingController cashondeliveryController = TextEditingController();

  TextEditingController upivalueoneController = TextEditingController();

  TextEditingController walletvalueoneController = TextEditingController();

  String radioGroup = "";

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
              top: 13.v,
              bottom: 16.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_payment".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: SizedBox(
              height: 1958.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 23.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_contact_details".tr,
                            style:
                                CustomTextStyles.titleLargeBlack90001SemiBold_1,
                          ),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                            controller: firstNameController,
                            hintText: "lbl_first_name".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: lastNameController,
                            hintText: "lbl_last_name".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "lbl_email".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 16.v),
                          CustomPhoneNumber(
                            country: selectedCountry,
                            controller: phoneNumberController,
                            onTap: (Country country) {
                              selectedCountry = country;
                            },
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "msg_choose_delivery".tr,
                            style:
                                CustomTextStyles.titleLargeBlack90001SemiBold_1,
                          ),
                          SizedBox(height: 22.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgRefresh,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 50.v,
                                  bottom: 106.v,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 23.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 37.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconBlack90001,
                                                  height: 20.v,
                                                  width: 19.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 1.v),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                    "lbl_home".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack90001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20.v),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                width: 201.h,
                                                child: Text(
                                                  "msg_4517_washington".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(
                                                    height: 1.82,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgEdit,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 33.h,
                                          bottom: 108.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgIconGray60001,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          bottom: 108.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgRefresh,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 50.v,
                                  bottom: 106.v,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 20.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 4.v,
                                          bottom: 43.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconBlack9000120x19,
                                                  height: 20.v,
                                                  width: 19.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 7.h),
                                                  child: Text(
                                                    "lbl_office".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumBlack90001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20.v),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                width: 203.h,
                                                child: Text(
                                                  "msg_2118_thornridge".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(
                                                    height: 1.82,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgEdit,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 33.h,
                                          bottom: 116.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgIconGray60001,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          bottom: 116.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgPlusPrimary18x17,
                                  height: 18.v,
                                  width: 17.h,
                                  margin: EdgeInsets.only(
                                    top: 2.v,
                                    bottom: 1.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text(
                                    "lbl_add_new_address".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.v),
                          Text(
                            "msg_do_you_have_a_promo".tr,
                            style: CustomTextStyles.titleMediumBlack90001,
                          ),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                            controller: promoCodeController,
                            hintText: "lbl_enter_your_code".tr,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(25.h, 20.v, 10.h, 20.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgOffer,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 64.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 22.v,
                              right: 12.h,
                              bottom: 22.v,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          CustomElevatedButton(
                            width: 200.h,
                            text: "lbl_apply_now".tr,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "msg_choose_payment_method".tr,
                            style: CustomTextStyles.titleLargeGray80001SemiBold,
                          ),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                            controller: cashondeliveryController,
                            hintText: "msg_cash_on_delivery".tr,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 16.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL10,
                            fillColor: appTheme.gray10002,
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: upivalueoneController,
                            hintText: "lbl_upi".tr,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 17.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL10,
                            fillColor: appTheme.gray10002,
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: walletvalueoneController,
                            hintText: "lbl_wallet".tr,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 18.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL10,
                            fillColor: appTheme.gray10002,
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            width: 396.h,
                            padding: EdgeInsets.all(17.h),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: CustomRadioButton(
                              text: "msg_credit_debit_card".tr,
                              value: "msg_credit_debit_card".tr,
                              groupValue: radioGroup,
                              onChange: (value) {
                                radioGroup = value;
                              },
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgIconPrimary,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 1.v,
                                    bottom: 2.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_add_new_card".tr,
                                    style: CustomTextStyles.titleMedium16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 198.v),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 42.v,
                              width: 364.h,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 4.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 23.h,
                                        vertical: 10.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillPrimary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Text(
                                        "lbl_enter_cvv".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 42.v,
                                      width: 242.h,
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCardOnprimarycontainer42x242,
                                            height: 42.v,
                                            width: 242.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 16.h,
                                                bottom: 9.v,
                                              ),
                                              child: Text(
                                                "lbl_e_g_123".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray40001,
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
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                            width: 200.h,
                            text: "lbl_pay_9_97".tr,
                            alignment: Alignment.center,
                          ),
                          Container(
                            width: 377.h,
                            margin: EdgeInsets.only(
                              top: 17.v,
                              right: 18.h,
                              bottom: 73.v,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_your_personal_data2".tr,
                                    style: CustomTextStyles.bodyMediumGray50002,
                                  ),
                                  TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: CustomTextStyles.titleSmallGray50002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 326.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage151x250,
                            height: 151.v,
                            width: 250.h,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage150x148,
                            height: 150.v,
                            width: 148.h,
                            margin: EdgeInsets.only(left: 14.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
