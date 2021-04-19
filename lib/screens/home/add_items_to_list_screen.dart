import 'package:flutter/material.dart';
import 'package:todo_list_provider/responsive/screen_type_builder.dart';
import 'package:todo_list_provider/screens/home/tablet/tablet_adder_screen.dart';

import 'mobile/mobile_adder_screen.dart';

class ListAdder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileListAdder(),
      tablet: TabletListAdder(),
    );
  }
}
