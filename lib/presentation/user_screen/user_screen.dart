import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          leadingWidth: 29.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgForward,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 15.v,
              bottom: 14.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "lbl_profile".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage24,
                height: 79.adaptSize,
                width: 79.adaptSize,
                radius: BorderRadius.circular(
                  39.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 25.v),
              Text(
                "lbl_george_d".tr,
                style: CustomTextStyles.titleLargeBlack90001,
              ),
              SizedBox(height: 6.v),
              Text(
                "lbl_george31".tr,
                style: CustomTextStyles.bodyMediumGray80002,
              ),
              SizedBox(height: 21.v),
              Container(
                width: 396.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.fillGray10002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder22,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFile,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_my_orders".tr,
                            style: CustomTextStyles.bodyLargeGray60005,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgOfferPrimary,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "msg_my_subscriptions".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                            "lbl_my_addresses".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMusic,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_faq".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgMusicPrimary,
                          height: 21.v,
                          width: 24.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_contact_us".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgInfo,
                          height: 21.v,
                          width: 24.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_about".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.v),
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFolder,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_log_out".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.v),
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
