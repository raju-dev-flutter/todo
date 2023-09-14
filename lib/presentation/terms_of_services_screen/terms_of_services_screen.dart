import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class TermsOfServicesScreen extends StatelessWidget {
  TermsOfServicesScreen({Key? key})
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
              top: 15.v,
              bottom: 14.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "msg_terms_of_services".tr,
            margin: EdgeInsets.only(left: 16.h),
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 28.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_terms_and_conditions".tr,
                          style: CustomTextStyles.titleLargeBlack90001SemiBold_1
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 28.v),
                        SizedBox(
                          width: 393.h,
                          child: Text(
                            "msg_welcome_to_all_sg".tr,
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleMediumBlack9000116
                                .copyWith(
                              decoration: TextDecoration.underline,
                              height: 2.27,
                            ),
                          ),
                        ),
                        SizedBox(height: 36.v),
                        SizedBox(
                          width: 396.h,
                          child: Text(
                            "msg_by_placing_an_order".tr,
                            maxLines: 13,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 2.28,
                            ),
                          ),
                        ),
                        SizedBox(height: 29.v),
                        Text(
                          "msg_our_delivery_service".tr,
                          style:
                              CustomTextStyles.titleMediumBlack90001.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 26.v),
                        SizedBox(
                          width: 393.h,
                          child: Text(
                            "msg_when_you_place_an".tr,
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 2.28,
                            ),
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Text(
                          "msg_price_and_availability".tr,
                          style:
                              CustomTextStyles.titleMediumBlack90001.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        SizedBox(
                          width: 393.h,
                          child: Text(
                            "msg_from_time_to_time".tr,
                            maxLines: 12,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 2.28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 34.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_payment3".tr,
                                  style: CustomTextStyles
                                      .titleMediumBlack90001_1
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text: "\r".tr,
                                  style: CustomTextStyles
                                      .titleLargeBlack90001SemiBold_2
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 29.v),
                        SizedBox(
                          width: 396.h,
                          child: Text(
                            "msg_we_accept_only_credit_debit".tr,
                            maxLines: 11,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 2.28,
                            ),
                          ),
                        ),
                        SizedBox(height: 29.v),
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
