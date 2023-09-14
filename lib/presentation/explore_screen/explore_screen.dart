import '../explore_screen/widgets/fruititem_item_widget.dart';
import '../explore_screen/widgets/item_item_widget.dart';
import '../explore_screen/widgets/productitem1_item_widget.dart';
import '../explore_screen/widgets/productitem2_item_widget.dart';
import '../explore_screen/widgets/productitem_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key})
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
          leadingWidth: 28.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgForward,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 13.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_explore".tr,
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_groceries".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleMediumBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 160.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 16.v,
                              right: 38.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ProductitemItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_vegetables".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleMediumBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 157.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 13.v,
                              right: 38.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ItemItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 22.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_fruits".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleMediumBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 160.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 16.v,
                              right: 38.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return FruititemItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 24.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_dairy_products".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleMediumBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 160.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 14.v,
                              right: 38.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Productitem1ItemWidget();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 26.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_bakery_items".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "lbl_see_all".tr,
                                  style: CustomTextStyles.titleMediumBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 157.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 13.v,
                              right: 38.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 16.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Productitem2ItemWidget();
                            },
                          ),
                        ),
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
