import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_outlined_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class LoginWithEmailIdScreen extends StatelessWidget {
  LoginWithEmailIdScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 48.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 152.v,
                    width: 157.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 157.h,
                            margin: EdgeInsets.only(bottom: 18.v),
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup273,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUser,
                                  height: 21.v,
                                  width: 18.h,
                                  margin: EdgeInsets.only(
                                    top: 47.v,
                                    bottom: 61.v,
                                  ),
                                ),
                                Container(
                                  height: 122.v,
                                  width: 73.h,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgLock,
                                        height: 36.v,
                                        width: 30.h,
                                        alignment: Alignment.topRight,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: 106.v,
                                          width: 53.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 2.h,
                                            vertical: 3.v,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup17,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgMobile,
                                                height: 99.v,
                                                width: 48.h,
                                                alignment: Alignment.center,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 6.h,
                                                    right: 3.h,
                                                    bottom: 2.v,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                          height: 5.v,
                                                          width: 4.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector,
                                                                height: 5.v,
                                                                width: 4.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              Opacity(
                                                                opacity: 0.1,
                                                                child:
                                                                    CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgVectorBlack90001,
                                                                  height: 5.v,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 1.v),
                                                      Opacity(
                                                        opacity: 0.2,
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                            height: 2.v,
                                                            width: 17.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 6.v),
                                                      Opacity(
                                                        opacity: 0.1,
                                                        child: Container(
                                                          height: 1.v,
                                                          width: 9.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .black90001
                                                                .withOpacity(
                                                                    0.39),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 2.v),
                                                      SizedBox(
                                                        height: 6.v,
                                                        width: 37.h,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMenu,
                                                              height: 6.v,
                                                              width: 37.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Opacity(
                                                              opacity: 0.2,
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                  height: 1.v,
                                                                  width: 17.h,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 2.h,
                                                                    top: 2.v,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onPrimaryContainer,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 5.v),
                                                      Opacity(
                                                        opacity: 0.1,
                                                        child: Container(
                                                          height: 1.v,
                                                          width: 9.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .black90001
                                                                .withOpacity(
                                                                    0.39),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 2.v),
                                                      SizedBox(
                                                        height: 6.v,
                                                        width: 37.h,
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMenuGray300,
                                                              height: 6.v,
                                                              width: 37.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Opacity(
                                                              opacity: 0.2,
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                  height: 1.v,
                                                                  width: 17.h,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              2.h),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onPrimaryContainer,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 5.v),
                                                      Opacity(
                                                        opacity: 0.1,
                                                        child: Container(
                                                          height: 1.v,
                                                          width: 9.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: appTheme
                                                                .black90001
                                                                .withOpacity(
                                                                    0.39),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 2.v),
                                                      SizedBox(
                                                        height: 6.v,
                                                        width: 37.h,
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMenuGray3006x37,
                                                              height: 6.v,
                                                              width: 37.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Container(
                                                                height: 1.v,
                                                                width: 20.h,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 2.h,
                                                                  bottom: 2.v,
                                                                ),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorPrimary,
                                                                      height: 1
                                                                          .adaptSize,
                                                                      width: 1
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(left: 2.h),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgVectorPrimary1x1,
                                                                              height: 1.adaptSize,
                                                                              width: 1.adaptSize,
                                                                            ),
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgVector1x1,
                                                                              height: 1.adaptSize,
                                                                              width: 1.adaptSize,
                                                                            ),
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgVector1x1,
                                                                              height: 1.adaptSize,
                                                                              width: 1.adaptSize,
                                                                            ),
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgVector1x1,
                                                                              height: 1.adaptSize,
                                                                              width: 1.adaptSize,
                                                                            ),
                                                                            CustomImageView(
                                                                              svgPath: ImageConstant.imgVectorPrimary,
                                                                              height: 1.adaptSize,
                                                                              width: 1.adaptSize,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVector1,
                                                                      height: 1
                                                                          .adaptSize,
                                                                      width: 1
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              4.h),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorPrimary,
                                                                      height: 1
                                                                          .adaptSize,
                                                                      width: 1
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              2.h),
                                                                    ),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgVectorPrimary,
                                                                      height: 1
                                                                          .adaptSize,
                                                                      width: 1
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                    ),
                                                                    Opacity(
                                                                      opacity:
                                                                          0.2,
                                                                      child:
                                                                          CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgGroup,
                                                                        height:
                                                                            1.v,
                                                                        width:
                                                                            20.h,
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 18.v,
                                                        width: 28.h,
                                                        margin: EdgeInsets.only(
                                                          left: 3.h,
                                                          top: 10.v,
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgTicket,
                                                              height: 8.v,
                                                              width: 28.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                width: 12.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 5
                                                                            .h),
                                                                child: Text(
                                                                  "lbl_log_in"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .montserratGray30001,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 113.h,
                            child: Divider(
                              color: theme.colorScheme.primaryContainer,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCharacter,
                          height: 100.v,
                          width: 52.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 30.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 41.v),
                Text(
                  "lbl_login2".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 27.v),
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
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 17.v,
                  ),
                ),
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "lbl_login2".tr,
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
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_don_t_you_have_an2".tr,
                          style: CustomTextStyles.bodyLargeBluegray400,
                        ),
                        TextSpan(
                          text: "lbl_register".tr,
                          style: CustomTextStyles.titleMediumGray900,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
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
