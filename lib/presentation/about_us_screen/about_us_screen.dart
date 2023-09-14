import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';
import 'package:todo/widgets/custom_checkbox_button.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool englishName = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
            text: "lbl_about".tr,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 29.v),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage177x396,
                          height: 177.v,
                          width: 396.h,
                        ),
                        Container(
                          width: 385.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 21.v,
                            right: 26.h,
                          ),
                          child: Text(
                            "msg_what_began_little".tr,
                            maxLines: 17,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.bodyMediumGray70001.copyWith(
                              height: 2.00,
                            ),
                          ),
                        ),
                        SizedBox(height: 24.v),
                        SizedBox(
                          height: 619.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 496.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 453.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                            color: appTheme.red50,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgImage172x198,
                                                height: 172.v,
                                                width: 198.h,
                                              ),
                                              SizedBox(height: 1.v),
                                              Text(
                                                "msg_why_choose_us".tr,
                                                style: CustomTextStyles
                                                    .titleLargePrimarySemiBold,
                                              ),
                                              SizedBox(height: 13.v),
                                              SizedBox(
                                                width: 274.h,
                                                child: Text(
                                                  "msg_we_do_not_buy_from".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleMediumGray800,
                                                ),
                                              ),
                                              Container(
                                                width: 389.h,
                                                margin: EdgeInsets.only(
                                                  top: 22.v,
                                                  right: 6.h,
                                                ),
                                                child: Text(
                                                  "msg_we_would_like_to".tr,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray60006
                                                      .copyWith(
                                                    height: 2.07,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 18.v,
                                                    right: 25.h,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIconPrimary24x24,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 8.h,
                                                          top: 5.v,
                                                        ),
                                                        child: Text(
                                                          "msg_100_organic_food"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleSmallGray800,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgIcon24x24,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 8.h,
                                                          top: 5.v,
                                                        ),
                                                        child: Text(
                                                          "lbl_fast_delivery"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleSmallGray800,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 12.v),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgIcon1,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 4.v),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 7.v,
                                                      bottom: 2.v,
                                                    ),
                                                    child: Text(
                                                      "lbl_24_7_service".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallGray800,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  CustomCheckboxButton(
                                                    text:
                                                        "lbl_secure_payment".tr,
                                                    value: englishName,
                                                    margin: EdgeInsets.only(
                                                        bottom: 4.v),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1.v),
                                                    textStyle: CustomTextStyles
                                                        .titleSmallGray800,
                                                    onChange: (value) {
                                                      englishName = value;
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                          vertical: 16.v,
                                        ),
                                        decoration: AppDecoration.fillGray10002
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: Text(
                                                "lbl_privacy_policy2".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray6000516,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 23.v,
                                              width: 21.h,
                                              margin:
                                                  EdgeInsets.only(right: 1.h),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 16.v),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18.h,
                                          vertical: 17.v,
                                        ),
                                        decoration: AppDecoration.fillGray10002
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(top: 2.v),
                                              child: Text(
                                                "msg_terms_and_services".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeGray6000516,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: 23.v,
                                              width: 21.h,
                                              margin:
                                                  EdgeInsets.only(right: 2.h),
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
                        SizedBox(height: 98.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
