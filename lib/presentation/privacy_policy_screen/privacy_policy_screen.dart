import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({Key? key})
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
            text: "lbl_privacy_policy2".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 29.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_privacy_policy2".tr,
                          style: CustomTextStyles.titleLargeBlack90001SemiBold_1
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "msg_last_updated_on".tr,
                            style: CustomTextStyles.bodyLargeGray6000116,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          height: 1991.v,
                          width: 396.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 498.v),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_information_collected2".tr,
                                          style: CustomTextStyles
                                              .titleMediumBlack90001_1
                                              .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "  ".tr,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 393.h,
                                      child: Text(
                                        "msg_sg_grocery_is_committed".tr,
                                        maxLines: 15,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 62.v),
                                    SizedBox(
                                      width: 396.h,
                                      child: Text(
                                        "msg_sg_grocery_collects".tr,
                                        maxLines: 21,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 307.h,
                                      margin: EdgeInsets.only(
                                        top: 17.v,
                                        right: 88.h,
                                      ),
                                      child: Text(
                                        "msg_use_of_your_information".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumBlack90001
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                          height: 2.07,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    SizedBox(
                                      width: 393.h,
                                      child: Text(
                                        "msg_we_will_use_your".tr,
                                        maxLines: 7,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 29.v),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_legal_disclaimer2".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90001_1
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Container(
                                      width: 391.h,
                                      margin: EdgeInsets.only(
                                        top: 24.v,
                                        right: 4.h,
                                      ),
                                      child: Text(
                                        "msg_we_reserve_the_right".tr,
                                        maxLines: 8,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_changes_in_this2".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90001_1
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 15.v),
                                    SizedBox(
                                      width: 396.h,
                                      child: Text(
                                        "msg_sg_grocery_reserve".tr,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.v),
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
