import '../home_screen_page/widgets/category1_item_widget.dart';
import '../home_screen_page/widgets/fortunerice_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSearchView(
                          margin: EdgeInsets.only(right: 16.h),
                          controller: searchController,
                          hintText: "msg_search_products".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(23.h, 15.v, 14.h, 14.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 52.v,
                          ),
                          suffix: Container(
                            margin: EdgeInsets.only(),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCard,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 52.v,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20.v,
                            right: 16.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
                            vertical: 10.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 7.h,
                                  top: 25.v,
                                  bottom: 27.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 99.h,
                                      child: Text(
                                        "msg_everyday_essentials".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleLargeRegular
                                            .copyWith(
                                          height: 1.22,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Text(
                                      "lbl_10_off".tr,
                                      style: CustomTextStyles.titleLarge20,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: 126.v,
                                width: 199.h,
                                margin: EdgeInsets.only(bottom: 8.v),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        CustomImageView(
                          svgPath: ImageConstant.imgSwipe,
                          height: 5.v,
                          width: 39.h,
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
                                "lbl_top_categories".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.v),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 143.v,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              top: 18.v,
                              right: 4.h,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: 20.h,
                              );
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Category1ItemWidget();
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
                                "lbl_top_products".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.v),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          height: 192.v,
                          child: ListView.separated(
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
                              return FortunericeItemWidget();
                            },
                          ),
                        ),
                        SizedBox(height: 21.v),
                        SizedBox(
                          height: 191.v,
                          width: 396.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  decoration:
                                      AppDecoration.fillLightBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 111.v),
                                      Container(
                                        height: 80.v,
                                        width: 161.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.cyan50,
                                          borderRadius: BorderRadius.circular(
                                            80.h,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage130x158,
                                height: 130.v,
                                width: 158.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 7.v),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_get_25_cashback".tr,
                                        style: CustomTextStyles
                                            .headlineSmallTeal40001,
                                      ),
                                      SizedBox(height: 8.v),
                                      Text(
                                        "msg_on_all_baby_products".tr,
                                        style:
                                            CustomTextStyles.bodyMediumTeal400,
                                      ),
                                      SizedBox(height: 46.v),
                                      CustomElevatedButton(
                                        height: 33.v,
                                        width: 129.h,
                                        text: "lbl_shop_now".tr,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumOnPrimaryContainer16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 23.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "msg_deals_of_the_week".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 31.h,
                                          vertical: 13.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage81x92,
                                              height: 81.v,
                                              width: 92.h,
                                            ),
                                            SizedBox(height: 10.v),
                                            Text(
                                              "lbl_soft_drinks".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray8000116,
                                            ),
                                            SizedBox(height: 11.v),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "lbl_upto_40_off".tr,
                                                style: CustomTextStyles
                                                    .labelLargePrimary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 16.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 31.h,
                                          vertical: 13.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillGray.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage6,
                                              height: 81.v,
                                              width: 92.h,
                                            ),
                                            SizedBox(height: 10.v),
                                            Text(
                                              "lbl_tea".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray8000116,
                                            ),
                                            SizedBox(height: 11.v),
                                            Text(
                                              "lbl_upto_30_off".tr,
                                              style: CustomTextStyles
                                                  .labelLargePrimary,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 31.h,
                                    vertical: 14.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage7,
                                        height: 81.v,
                                        width: 92.h,
                                      ),
                                      SizedBox(height: 10.v),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_bath".tr,
                                          style: CustomTextStyles
                                              .titleMediumGray8000116,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10.h,
                                          top: 11.v,
                                        ),
                                        child: Text(
                                          "lbl_min_20_of".tr,
                                          style: CustomTextStyles
                                              .labelLargePrimary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 18.v,
                            right: 16.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_featured_items".tr,
                                style: CustomTextStyles.titleLargeGray8000120,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "lbl_explore_all".tr,
                                  style: CustomTextStyles.titleMedium16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.h,
                                          vertical: 14.v,
                                        ),
                                        decoration: AppDecoration.fillDeepOrange
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage84x126,
                                              height: 84.v,
                                              width: 126.h,
                                              alignment: Alignment.center,
                                            ),
                                            Container(
                                              width: 128.h,
                                              margin: EdgeInsets.only(
                                                left: 1.h,
                                                top: 10.v,
                                              ),
                                              child: Text(
                                                "msg_granola_premium".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer
                                                    .copyWith(
                                                  height: 1.33,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.v),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text(
                                                    "lbl_22_00".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallBold,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 57.h),
                                                  child: Text(
                                                    "lbl_1_kg".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallGray80001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 2.v),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 16.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.h,
                                          vertical: 14.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillLime.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage8,
                                              height: 84.v,
                                              width: 126.h,
                                              alignment: Alignment.center,
                                            ),
                                            Container(
                                              width: 93.h,
                                              margin: EdgeInsets.only(
                                                left: 1.h,
                                                top: 8.v,
                                              ),
                                              child: Text(
                                                "msg_sft_kiwi_slice_dried".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer,
                                              ),
                                            ),
                                            SizedBox(height: 10.v),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: Text(
                                                    "lbl_4_00".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallBold,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 51.h),
                                                  child: Text(
                                                    "lbl_3_pcs".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallGray80001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 2.v),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.h,
                                    vertical: 14.v,
                                  ),
                                  decoration: AppDecoration.fillOrange.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage9,
                                        height: 84.v,
                                        width: 126.h,
                                        alignment: Alignment.center,
                                      ),
                                      Container(
                                        width: 98.h,
                                        margin: EdgeInsets.only(
                                          left: 1.h,
                                          top: 8.v,
                                        ),
                                        child: Text(
                                          "msg_sft_kiwi_slice_dried".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleSmallErrorContainer,
                                        ),
                                      ),
                                      SizedBox(height: 12.v),
                                      Row(
                                        children: [
                                          Text(
                                            "lbl_5_00".tr,
                                            style:
                                                CustomTextStyles.titleSmallBold,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 65.h),
                                            child: Text(
                                              "lbl_1_kg".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray80001,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3.v),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
