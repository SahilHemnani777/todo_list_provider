import 'package:flutter/material.dart';
import 'package:todo_list_provider/responsive/screen_type_builder.dart';
import 'package:todo_list_provider/screens/home/tablet/tablet_list_screens.dart';
import 'mobile/mobile_list_screens.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileList(),
      tablet: TabletList(),
    );
  }
}
