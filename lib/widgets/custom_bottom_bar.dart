import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgCar,
      activeIcon: ImageConstant.imgCar,
      type: BottomBarEnum.Car,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVolume,
      activeIcon: ImageConstant.imgVolume,
      type: BottomBarEnum.Volume,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClock,
      activeIcon: ImageConstant.imgClock,
      type: BottomBarEnum.Clock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClockOnprimarycontainer,
      activeIcon: ImageConstant.imgClockOnprimarycontainer,
      type: BottomBarEnum.Clockonprimarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserOnprimarycontainer,
      activeIcon: ImageConstant.imgUserOnprimarycontainer,
      type: BottomBarEnum.Useronprimarycontainer,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 25.v,
              width: 26.h,
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: 25.v,
              width: 26.h,
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Car,
  Volume,
  Clock,
  Clockonprimarycontainer,
  Useronprimarycontainer,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
