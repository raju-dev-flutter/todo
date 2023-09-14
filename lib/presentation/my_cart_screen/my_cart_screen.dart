import '../my_cart_screen/widgets/productdetails_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen_page/home_screen_page.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_bottom_bar.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController discountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 29.h,
          leading: AppbarImage1(
            svgPath: ImageConstant.imgForward,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 13.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_my_cart".tr,
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_tomorrow_7_am".tr,
                              style: CustomTextStyles
                                  .titleLargeGray80001SemiBold20,
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgIconGray80001,
                              height: 5.v,
                              width: 11.h,
                              margin: EdgeInsets.only(
                                left: 9.h,
                                top: 9.v,
                                bottom: 10.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.v),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
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
                            return ProductdetailsItemWidget();
                          },
                        ),
                        SizedBox(height: 24.v),
                        Container(
                          width: 396.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 10.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup215,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgMinimize,
                                height: 85.v,
                                width: 11.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 19.h,
                                  top: 2.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_flat".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimaryContainerBold,
                                    ),
                                    SizedBox(height: 2.v),
                                    Text(
                                      "lbl_50_off".tr,
                                      style: CustomTextStyles.titleLarge20,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      "msg_on_your_first_order".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "msg_use_coupon_code".tr,
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgMinimize,
                                height: 85.v,
                                width: 11.h,
                                margin: EdgeInsets.only(left: 26.h),
                              ),
                              Container(
                                height: 85.v,
                                width: 84.h,
                                margin: EdgeInsets.only(left: 27.h),
                                child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgMinimize,
                                      height: 85.v,
                                      width: 11.h,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(left: 3.h),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgMinimize,
                                      height: 85.v,
                                      width: 11.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "lbl_code".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer,
                                          ),
                                          SizedBox(height: 2.v),
                                          Text(
                                            "lbl_getfirst".tr,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimaryContainerBold,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 283.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 10.v,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: fs.Svg(
                                      ImageConstant.imgGroup216,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgMinimizeLime700,
                                      height: 86.v,
                                      width: 11.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 13.h,
                                        top: 5.v,
                                        bottom: 15.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text(
                                                  "lbl_get".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOnPrimaryContainer16,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                  "lbl_5_off".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOnPrimaryContainer,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.h,
                                              top: 7.v,
                                            ),
                                            child: Text(
                                              "msg_on_minimum_purchase".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.h,
                                              top: 7.v,
                                            ),
                                            child: Text(
                                              "msg_applicable_on_grocery".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnPrimaryContainer,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgMinimizeLime700,
                                      height: 86.v,
                                      width: 11.h,
                                      margin: EdgeInsets.only(left: 41.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 108.v,
                              width: 110.h,
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 10.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup217,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMinimizeLime700,
                                    height: 86.v,
                                    width: 11.h,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 1.h),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMinimizeLime700,
                                    height: 86.v,
                                    width: 11.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 18.v),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 19.h),
                                            child: Text(
                                              "lbl_code".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumHelveticaOnPrimaryContainer,
                                            ),
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            "lbl_dollar5".tr,
                                            style: CustomTextStyles
                                                .titleMediumHelveticaOnPrimaryContainer,
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
                        SizedBox(height: 23.v),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 251.h,
                            child: Text(
                              "msg_promo_code_can_be".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumGreen30099,
                            ),
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Text(
                          "lbl_payment_details".tr,
                          style: CustomTextStyles.titleLargeGray80001,
                        ),
                        SizedBox(height: 20.v),
                        Container(
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  top: 10.v,
                                  right: 25.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_total_mrp".tr,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                    Text(
                                      "lbl_9_97".tr,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: Divider(
                                  color: appTheme.gray10001,
                                  indent: 20.h,
                                  endIndent: 20.h,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              SizedBox(
                                height: 32.v,
                                width: 356.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomTextFormField(
                                      width: 356.h,
                                      controller: discountController,
                                      hintText: "lbl_discount".tr,
                                      hintStyle: CustomTextStyles.bodyLarge16,
                                      textInputAction: TextInputAction.done,
                                      alignment: Alignment.bottomCenter,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 1.h),
                                      borderDecoration: TextFormFieldStyleHelper
                                          .underLineGray,
                                      filled: false,
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 2.h),
                                        child: Text(
                                          "lbl_0_00".tr,
                                          style: CustomTextStyles.bodyLarge16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  top: 9.v,
                                  right: 28.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "msg_shipping_charges".tr,
                                        style: CustomTextStyles.bodyLarge16,
                                      ),
                                    ),
                                    Text(
                                      "lbl_free".tr,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 6.v,
                                ),
                                decoration: AppDecoration.fillGreen.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 3.v,
                                      ),
                                      child: Text(
                                        "lbl_total".tr,
                                        style:
                                            CustomTextStyles.titleMediumGray800,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.v,
                                        right: 2.h,
                                      ),
                                      child: Text(
                                        "lbl_9_972".tr,
                                        style:
                                            CustomTextStyles.titleMediumGray800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomElevatedButton(
                          width: 200.h,
                          text: "lbl_checkout".tr,
                          alignment: Alignment.center,
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
