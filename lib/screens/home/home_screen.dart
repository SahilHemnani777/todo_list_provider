import 'package:flutter/material.dart';
import 'package:todo_list_provider/responsive/orientation_builder.dart';
import 'package:todo_list_provider/responsive/screen_type_builder.dart';
import 'package:todo_list_provider/screens/home/tablet/tablet_screens.dart';

import 'mobile/mobile_screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: MobilePortraitScreen(),
        landscape: MobileLandscapeScreen(),
      ),
      tablet: OrientationLayout(
        portrait: TabletPortraitScreen(),
        landscape: TabletLandscapeScreen(),
      ),
    );
  }
}
