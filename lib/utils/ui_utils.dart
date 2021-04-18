import 'package:flutter/cupertino.dart';
import 'package:todo_list_provider/enum/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;


  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}
