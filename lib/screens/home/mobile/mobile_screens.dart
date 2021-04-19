import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../add_items_to_list_screen.dart';
import '../list_screen.dart';

class MobilePortraitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //opening the bottom sheet
          showModalBottomSheet(
              context: context, builder: (context) => ListAdder());
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list_alt,
                    size: 30,
                  ),
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "TO-DO",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "0 Tasks",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.black,
            ),
            child: ListScreen(),
          ))
        ],
      ),
    );
  }
}

class MobileLandscapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //opening the bottom sheet
          showModalBottomSheet(
              context: context, builder: (context) => ListAdder());
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list_alt,
                    size: 30,
                  ),
                  radius: 30,
                  backgroundColor: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "TO-DO",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  "0 Tasks",
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.black),
            child: ListScreen(),
          ))
        ],
      ),
    );
  }
}
