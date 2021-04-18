import 'package:flutter/material.dart';
import 'package:todo_list_provider/enum/device_screen_type.dart';

class SizingInformation {
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.deviceScreenType, this.screenSize, this.localWidgetSize});
}
