import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:todo/core/app_export.dart';

// ignore: must_be_immutable
class ItemcolumnItemWidget extends StatelessWidget {
  const ItemcolumnItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 115.v,
              width: 122.h,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup182,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgAirplane,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage85x84,
                    height: 85.v,
                    width: 84.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 47.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCardOrangeA200,
                    height: 47.v,
                    width: 122.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 11.v),
                      child: Text(
                        "lbl_pinapple".tr,
                        style:
                            CustomTextStyles.titleMediumOnPrimaryContainerBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
