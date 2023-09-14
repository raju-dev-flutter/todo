import '../details_screen/widgets/chipview_item_widget.dart';
import '../details_screen/widgets/itemcolumn_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 262.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 185.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(30.h),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage219x240,
                      height: 219.v,
                      width: 240.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    CustomAppBar(
                      height: 47.v,
                      leadingWidth: 29.h,
                      leading: AppbarImage1(
                        svgPath: ImageConstant.imgForwardOnprimarycontainer,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 1.v,
                        ),
                      ),
                      title: AppbarSubtitle(
                        text: "lbl_details".tr,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSwipeSecondarycontainer,
                          height: 5.v,
                          width: 33.h,
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 25.v,
                            right: 1.h,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_green_apple".tr,
                                style: CustomTextStyles.headlineMediumGray80001,
                              ),
                              Spacer(),
                              CustomImageView(
                                svgPath: ImageConstant.imgVolumePrimary,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15.h,
                                  bottom: 5.v,
                                ),
                                child: Text(
                                  "lbl_12".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgPlusPrimary,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  bottom: 4.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Text(
                          "lbl_special_price".tr,
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            right: 1.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_2".tr,
                                style: theme.textTheme.displaySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 11.v),
                                child: Text(
                                  "lbl_42_off".tr,
                                  style: CustomTextStyles
                                      .titleLargePrimarySemiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Text(
                          "lbl_description".tr,
                          style: CustomTextStyles.titleLargeGray80001,
                        ),
                        Container(
                          width: 376.h,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            right: 20.h,
                          ),
                          child: Text(
                            "msg_green_apples_have".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLarge16.copyWith(
                              height: 1.56,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            runSpacing: 21.v,
                            spacing: 21.h,
                            children: List<Widget>.generate(
                                2, (index) => ChipviewItemWidget()),
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Text(
                          "lbl_related_items".tr,
                          style: CustomTextStyles.titleLargeGray80001,
                        ),
                        SizedBox(height: 25.v),
                        SizedBox(
                          height: 162.v,
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
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ItemcolumnItemWidget();
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
      ),
    );
  }
}
