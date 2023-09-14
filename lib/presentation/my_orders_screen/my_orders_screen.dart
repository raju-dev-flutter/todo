import '../my_orders_screen/widgets/deliverystatus_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_outlined_button.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key})
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
            text: "lbl_my_orders2".tr,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_order_history".tr,
                      style: CustomTextStyles.titleLargeBlack90001SemiBold_1,
                    ),
                    SizedBox(height: 22.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFramePrimary,
                          height: 626.v,
                          width: 18.h,
                          margin: EdgeInsets.only(top: 6.v),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 45.v,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 17.h,
                                    vertical: 35.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage48x57,
                                        height: 48.v,
                                        width: 57.h,
                                        margin: EdgeInsets.only(
                                          top: 8.v,
                                          bottom: 14.v,
                                        ),
                                      ),
                                      Container(
                                        height: 55.v,
                                        width: 53.h,
                                        margin: EdgeInsets.only(
                                          left: 16.h,
                                          top: 5.v,
                                          bottom: 10.v,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage79x79,
                                              height: 54.v,
                                              width: 52.h,
                                              alignment: Alignment.center,
                                            ),
                                            CustomElevatedButton(
                                              height: 55.v,
                                              width: 53.h,
                                              text: "lbl_13".tr,
                                              buttonStyle:
                                                  CustomButtonStyles.fillGrayD,
                                              buttonTextStyle: theme
                                                  .textTheme.headlineMedium!,
                                              alignment: Alignment.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 26.h,
                                          bottom: 13.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_arrives_tomorrow".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack9000116,
                                            ),
                                            SizedBox(height: 16.v),
                                            Text(
                                              "lbl_7_am_pm".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeBlack9000116,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomOutlinedButton(
                                      height: 36.v,
                                      width: 145.h,
                                      text: "msg_view_order_details".tr,
                                      buttonStyle:
                                          CustomButtonStyles.outlinePrimaryTL3,
                                      buttonTextStyle:
                                          theme.textTheme.titleSmall!,
                                    ),
                                    CustomElevatedButton(
                                      height: 36.v,
                                      width: 120.h,
                                      text: "lbl_track_order".tr,
                                      buttonTextStyle: CustomTextStyles
                                          .titleSmallOnPrimaryContainer,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_edit_order".tr,
                                      style:
                                          theme.textTheme.titleSmall!.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    Text(
                                      "lbl_get_invoice".tr,
                                      style:
                                          theme.textTheme.titleSmall!.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 22.v),
                                Expanded(
                                  child: ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return SizedBox(
                                        height: 16.v,
                                      );
                                    },
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return DeliverystatusItemWidget();
                                    },
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomOutlinedButton(
                                      height: 36.v,
                                      width: 145.h,
                                      text: "msg_view_order_details".tr,
                                      buttonStyle:
                                          CustomButtonStyles.outlinePrimaryTL3,
                                      buttonTextStyle:
                                          theme.textTheme.titleSmall!,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.v,
                                        bottom: 7.v,
                                      ),
                                      child: Text(
                                        "lbl_get_invoice".tr,
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                  ],
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
