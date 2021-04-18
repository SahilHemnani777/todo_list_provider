import 'package:flutter/material.dart';

class TabletPortraitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
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
              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.black
            ),
          ))
        ],
      ),
    );
  }
}

class TabletLandscapeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.list_alt,
                      size: 30,
                    ),
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height:50,
                ),
                Text(
                  "T",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "O",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "D",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "O",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(
                  height:50,
                ),
                FloatingActionButton(onPressed: (){},child: Icon(Icons.add, size: 40,),backgroundColor: Colors.black,)

              ],
            ),
          ),
          Column(
            children: [
              Container(
              width: MediaQuery.of(context).size.width -100,
              height: 50,
              child: Center(child: Text("0 Tasks", style: TextStyle(fontSize: 20, color: Colors.black45),)),),
              Container(
                height: MediaQuery.of(context).size.height-50,
                width: MediaQuery.of(context).size.width -100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
