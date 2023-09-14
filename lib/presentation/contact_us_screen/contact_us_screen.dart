import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController additionalinfoController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

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
              top: 14.v,
              bottom: 15.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_contact_us".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 9.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 30.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 21.h,
                              vertical: 15.v,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "lbl_get_in_touch".tr,
                                  style: CustomTextStyles
                                      .titleLargeBlack90001SemiBold_1,
                                ),
                                SizedBox(height: 30.v),
                                SizedBox(
                                  width: 353.h,
                                  child: Text(
                                    "msg_one_of_our_workspace".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyMediumGray60001
                                        .copyWith(
                                      height: 2.07,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.v),
                              ],
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Text(
                            "lbl_your_details".tr,
                            style:
                                CustomTextStyles.titleLargeBlack90001SemiBold_1,
                          ),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                            controller: firstNameController,
                            hintText: "lbl_first_name".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 21.v,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: lastNameController,
                            hintText: "lbl_last_name".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 21.v,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "lbl_email".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputType: TextInputType.emailAddress,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 21.v,
                            ),
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: phoneNumberController,
                            hintText: "lbl_phone_number".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputType: TextInputType.phone,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(15.h, 19.v, 30.h, 18.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage27x25,
                                height: 27.v,
                                width: 26.h,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 64.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 20.v,
                              right: 30.h,
                              bottom: 20.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL101,
                            fillColor: appTheme.gray10003,
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: additionalinfoController,
                            hintText: "lbl_additional_info".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            maxLines: 7,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 13.v,
                            ),
                          ),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                            width: 200.h,
                            text: "lbl_send_message".tr,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 24.v),
                          CustomElevatedButton(
                            height: 60.v,
                            text: "msg_2464_royal_ln_mesa".tr,
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 16.h),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgLocationPrimary,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.titleSmall!,
                          ),
                          SizedBox(height: 24.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 38.h,
                              vertical: 13.v,
                            ),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgCall,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 4.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 9.v,
                                    bottom: 6.v,
                                  ),
                                  child: Text(
                                    "msg_1_773_600_4875".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 15.v,
                                  ),
                                  child: Text(
                                    "lbl2".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 9.v,
                                    bottom: 6.v,
                                  ),
                                  child: Text(
                                    "msg_1_773_600_4866".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                            controller: emailController1,
                            hintText: "msg_sggrocery_gmail_com".tr,
                            hintStyle: theme.textTheme.titleSmall!,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMail,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 60.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              top: 21.v,
                              right: 30.h,
                              bottom: 21.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL10,
                            fillColor: appTheme.gray10002,
                          ),
                          SizedBox(height: 97.v),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Car:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Volume:
        return "/";
      case BottomBarEnum.Clock:
        return "/";
      case BottomBarEnum.Clockonprimarycontainer:
        return "/";
      case BottomBarEnum.Useronprimarycontainer:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
