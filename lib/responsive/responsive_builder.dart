import 'package:flutter/material.dart';
import 'package:todo_list_provider/responsive/sizing_information.dart';
import 'package:todo_list_provider/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {

  final Widget Function(BuildContext buildContext, SizingInformation sizingInformation) builder;


  ResponsiveBuilder({this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstarints){
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceScreenType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstarints.maxWidth, boxConstarints.maxHeight)
      );
      return builder(context, sizingInformation);

    });
  }
}
