import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/app_bar/appbar_image.dart';
import 'package:todo/widgets/app_bar/appbar_image_1.dart';
import 'package:todo/widgets/app_bar/appbar_image_2.dart';
import 'package:todo/widgets/app_bar/appbar_subtitle.dart';
import 'package:todo/widgets/app_bar/custom_app_bar.dart';
import 'package:todo/widgets/custom_drop_down.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController groupThirtyEighController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            text: "lbl_faq".tr,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: SizedBox(
              height: 1026.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 24.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 14.v,
                            ),
                            decoration: AppDecoration.fillGray10003.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    "lbl_select_category".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack90001,
                                  height: 21.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(
                                    top: 3.v,
                                    right: 13.h,
                                    bottom: 3.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.v),
                          CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 18.v, 26.h, 18.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack90001,
                              ),
                            ),
                            hintText: "msg_where_do_you_deliver".tr,
                            items: dropdownItemList,
                            borderDecoration: DropDownStyleHelper.fillGray,
                            fillColor: appTheme.gray10002,
                            onChanged: (value) {},
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 4.v),
                                  child: Text(
                                    "msg_how_can_i_order".tr,
                                    style:
                                        CustomTextStyles.bodyLargeGray6000516,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack90001,
                                  height: 21.v,
                                  width: 23.h,
                                  margin: EdgeInsets.only(
                                    top: 1.v,
                                    right: 13.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 387.h,
                            margin: EdgeInsets.only(
                              top: 21.v,
                              right: 8.h,
                            ),
                            child: Text(
                              "msg_placing_an_order".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyMediumOnSecondaryContainer
                                  .copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                          SizedBox(height: 18.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 19.h,
                              vertical: 9.v,
                            ),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 264.h,
                                    margin: EdgeInsets.only(top: 4.v),
                                    child: Text(
                                      "msg_how_do_i_know_at".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargeGray6000516
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack90001,
                                  height: 21.v,
                                  width: 24.h,
                                  margin: EdgeInsets.only(
                                    left: 68.h,
                                    top: 15.v,
                                    bottom: 15.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 19.h,
                              vertical: 17.v,
                            ),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "msg_what_is_minimum".tr,
                                    style:
                                        CustomTextStyles.bodyLargeGray6000516,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack90001,
                                  height: 21.v,
                                  width: 24.h,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 19.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.fillGray10002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 4.v),
                                  child: Text(
                                    "msg_what_if_i_want_to".tr,
                                    style:
                                        CustomTextStyles.bodyLargeGray6000516,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack90001,
                                  height: 21.v,
                                  width: 24.h,
                                  margin: EdgeInsets.only(
                                    left: 42.h,
                                    top: 1.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Text(
                            "msg_not_listed_your".tr,
                            style:
                                CustomTextStyles.titleLargeBlack90001SemiBold,
                          ),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                            controller: groupThirtyEighController,
                            hintText: "msg_write_your_question_query".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40002,
                            textInputAction: TextInputAction.done,
                            maxLines: 6,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 15.v,
                            ),
                          ),
                          SizedBox(height: 30.v),
                          CustomElevatedButton(
                            width: 208.h,
                            text: "lbl_submit".tr,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 30.v),
                        ],
                      ),
                    ),
                  ),
                  CustomAppBar(
                    height: 84.v,
                    leadingWidth: 56.h,
                    leading: AppbarImage1(
                      svgPath: ImageConstant.imgCar,
                      margin: EdgeInsets.only(
                        left: 30.h,
                        top: 22.v,
                        bottom: 36.v,
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(left: 59.h),
                      child: Row(
                        children: [
                          AppbarImage(
                            svgPath: ImageConstant.imgVolume,
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgClock,
                            margin: EdgeInsets.only(left: 60.h),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      AppbarImage2(
                        svgPath: ImageConstant.imgClockOnprimarycontainer,
                        margin: EdgeInsets.only(
                          left: 30.h,
                          top: 22.v,
                          right: 36.h,
                        ),
                      ),
                      AppbarImage2(
                        svgPath: ImageConstant.imgUserOnprimarycontainer,
                        margin: EdgeInsets.only(
                          left: 59.h,
                          top: 22.v,
                          right: 66.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
