import '../my_addresses_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';

class MyAddressesScreen extends StatelessWidget {
  MyAddressesScreen({Key? key})
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
            text: "lbl_my_addresses".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 23.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgIconPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "lbl_add_new_address".tr,
                            style: CustomTextStyles.titleLargePrimarySemiBold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.v),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgRefresh,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                            margin: EdgeInsets.only(
                              top: 50.v,
                              bottom: 106.v,
                            ),
                          ),
                          Expanded(
                            child: Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: 24.v,
                                    );
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return UserprofileItemWidget();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 74.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgRefresh,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    SizedBox(height: 74.v),
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
