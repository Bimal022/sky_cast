import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class CustomNavigationBar extends StatelessWidget {
  final List<IconData> iconList;
  final int activeIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    Key? key,
    required this.iconList,
    required this.activeIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (int index, bool isActive) {
        return Icon(
          iconList[index],
          size: 24,
          color: isActive ? Colors.blue : Colors.grey, // Customize active and inactive colors
        );
      },
      activeIndex: activeIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: onTap,
    );
  }
}
