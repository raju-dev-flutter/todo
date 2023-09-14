import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class MyWalletScreen extends StatelessWidget {
  MyWalletScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              top: 13.v,
              bottom: 16.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_my_wallet".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_my_balance".tr,
                      style: CustomTextStyles.titleLargeBlack90001SemiBold_1,
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_20".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "msg_use_to_pay_100".tr,
                      style: CustomTextStyles.bodyLargeGray50005,
                    ),
                    SizedBox(height: 28.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFramePrimary,
                          height: 456.v,
                          width: 18.h,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 15.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_17_oct_2021".tr,
                                  style: CustomTextStyles.bodyLargeBlack90001,
                                ),
                                SizedBox(height: 11.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.h,
                                    vertical: 19.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack900011.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_cashback_received".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack9000116,
                                            ),
                                            SizedBox(height: 15.v),
                                            Text(
                                              "msg_transaction_id".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray40001,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            74.h, 14.v, 4.h, 15.v),
                                        child: Text(
                                          "lbl_2".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimarySemiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24.v),
                                Text(
                                  "lbl_12_oct_2021".tr,
                                  style: CustomTextStyles.bodyLargeBlack90001,
                                ),
                                SizedBox(height: 11.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.h,
                                    vertical: 21.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack900011.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_spent_on_order".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack9000116,
                                            ),
                                            SizedBox(height: 14.v),
                                            Text(
                                              "msg_transaction_id2".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray40001,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            71.h, 17.v, 4.h, 9.v),
                                        child: Text(
                                          "lbl_5".tr,
                                          style: CustomTextStyles
                                              .titleLargeDeeporangeA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25.v),
                                Text(
                                  "lbl_05_sept_2021".tr,
                                  style: CustomTextStyles.bodyLargeBlack90001,
                                ),
                                SizedBox(height: 10.v),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.h,
                                    vertical: 19.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack900011.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_caashback_recieved".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack9000116,
                                            ),
                                            SizedBox(height: 15.v),
                                            Text(
                                              "msg_transaction_id3".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray40001,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            74.h, 14.v, 4.h, 15.v),
                                        child: Text(
                                          "lbl_3".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimarySemiBold,
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
                    SizedBox(height: 5.v),
                  ],
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
