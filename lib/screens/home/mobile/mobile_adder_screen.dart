import 'package:flutter/material.dart';

class MobileListAdder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      ),
    );
  }
}