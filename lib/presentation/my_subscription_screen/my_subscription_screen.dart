import '../my_subscription_screen/widgets/amulgoldmilk_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';
import 'package:todo/widgets/custom_drop_down.dart';

class MySubscriptionScreen extends StatelessWidget {
  MySubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
            text: "lbl_my_subscription".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 21.v, 24.h, 21.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdown,
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 14.v,
                  right: 16.h,
                ),
                hintText: "msg_subscription_weekly".tr,
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 24.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 24.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 2.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "lbl_today".tr,
                                    style: CustomTextStyles
                                        .titleMediumGray80001Bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 2.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "msg_23_september_2021".tr,
                                    style: CustomTextStyles.bodyLargeGray60004,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgCalendar,
                                  height: 26.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(left: 8.h),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 25.v,
                              right: 4.h,
                            ),
                            child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 15.v,
                                );
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return AmulgoldmilkItemWidget();
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 34.v),
                        CustomImageView(
                          svgPath: ImageConstant.imgIllustration,
                          height: 88.v,
                          width: 216.h,
                        ),
                        SizedBox(height: 16.v),
                        Text(
                          "msg_excited_to_serve".tr,
                          style: CustomTextStyles.bodyMediumGray600,
                        ),
                        SizedBox(height: 88.v),
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
