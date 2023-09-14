import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_outlined_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController entercontactnumController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          centerTitle: true,
          title: Row(
            children: [
              AppbarImage(
                svgPath: ImageConstant.imgGroup400,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 13.v,
                  bottom: 3.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_sg".tr,
                        style: CustomTextStyles.headlineMediumBlack900,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_grocery".tr,
                        style: CustomTextStyles.headlineMediumPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 39.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 15.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_register".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "lbl_your_name".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: "lbl_enter_your_name".tr,
                    hintStyle: CustomTextStyles.bodyLargeBluegray40016,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_email_id".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_enter_your_email".tr,
                    hintStyle: CustomTextStyles.bodyLargeBluegray40016,
                    textInputType: TextInputType.emailAddress,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                    controller: passwordController,
                    hintText: "msg_enter_your_password".tr,
                    hintStyle: CustomTextStyles.bodyLargeBluegray40016,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "msg_confirm_password".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                    controller: confirmpasswordController,
                    hintText: "msg_confirm_your_password".tr,
                    hintStyle: CustomTextStyles.bodyLargeBluegray40016,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 17.v,
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_contact_number".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  SizedBox(height: 13.v),
                  CustomTextFormField(
                    controller: entercontactnumController,
                    hintText: "msg_enter_your_contact".tr,
                    hintStyle: CustomTextStyles.bodyLargeBluegray40016,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.number,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 17.v,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    text: "lbl_register".tr,
                    buttonStyle: CustomButtonStyles.outlineIndigoA,
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 122.h,
                          child: Divider(),
                        ),
                      ),
                      Text(
                        "msg_or_continue_with".tr,
                        style: CustomTextStyles.bodyLargeBluegray40016,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 122.h,
                          child: Divider(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 23.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                        width: 183.h,
                        text: "lbl_google".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIcon,
                          ),
                        ),
                      ),
                      CustomOutlinedButton(
                        width: 194.h,
                        text: "lbl_facebook".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 8.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIconIndigo500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 47.h,
                      top: 31.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: CustomTextStyles.bodyLargeBluegray400,
                          ),
                          TextSpan(
                            text: "lbl_login2".tr,
                            style: CustomTextStyles.titleMediumGray900,
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
        ),
      ),
    );
  }
}
