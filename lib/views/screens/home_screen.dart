import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/call_screen.dart';
import 'package:flutter_chat/views/screens/camera_screen.dart';
import 'package:flutter_chat/views/screens/chat_screen.dart';
import 'package:flutter_chat/views/screens/new_group_screen.dart';
import 'package:flutter_chat/views/screens/setting_screen.dart';
import 'package:flutter_chat/views/screens/status_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  bool isSearch = false;
  bool isCameraOn = false;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  late TabController _controller;
  int _currentIndex = 0;
  int _initialIndex = 1;

  _handleTabSelection() {
    setState(() {
      _currentIndex = _controller.index;
      _currentIndex==0
      ?widget.isCameraOn =true
          : widget.isCameraOn =false;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 4, vsync: this, initialIndex: _initialIndex);
    _controller.addListener(_handleTabSelection);
    _currentIndex = _initialIndex == 0 ? 0 : _initialIndex;
    print(_currentIndex);
    super.initState();
  }
  test(){
    setState(() {
    _controller.index==1? exit(0): _controller.index=1;
    });

  }
  @override
  Widget build(BuildContext context) {
    double cameraWidth = sizeWidth(context) / 24;
    double yourWidth = sizeWidth(context) / 5;
    return WillPopScope(
      onWillPop:  () async {
         return test();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: widget.isSearch == true
              ? myCustomSearchBar()
              : (widget.isCameraOn == true
                  ? SizedBox()
                  : AppBar(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Messenger"),
                          Spacer(),

                        ],
                      ),
                      actions: [
                        SizedBox(
                          height:10.0,
                          width: 20.0,
                          child: IconButton(
                            padding: new EdgeInsets.all(0.0),
                            icon: Icon(Icons.search,),
                            onPressed: () {
                              //showSearch(context: context, delegate: DataSearch());
                              setState(() {
                                widget.isSearch = true;
                              });
                            },
                          ),
                        ),
                        PopupMenuButton<int>(
                          onSelected: (value) {
                            if (value ==0){
                              Get.to(NewGroupScreen());
                            }
                            if (value == 1){
                              Get.to(SettingScreen());
                            }
                          },
                          itemBuilder: (BuildContext contesxt) {
                            return [
                              PopupMenuItem(
                                child: Text("New group"),
                                value: 0,
                              ),
                              PopupMenuItem(
                                child: Text("Settings"),
                                value: 1,
                              ),
                            ];
                          },
                        ),
                      ],
                      bottom: TabBar(
                        controller: _controller,
                        indicatorColor: defaultColor,
                        tabs: <Widget>[
                          new Container(
                            width: cameraWidth,
                            child: new Tab(
                              icon: Icon(Icons.camera_alt),
                            ),
                          ),
                          new Container(
                            width: yourWidth,
                            child: new Tab(text: "CHATS"),
                          ),
                          new Container(
                            width: yourWidth,
                            child: new Tab(text: "STATUS"),
                          ),
                          new Container(
                            width: yourWidth,
                            child: new Tab(text: "CALLS"),
                          ),
                        ],
                      ),
                    )),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            CameraScreen(),
            ChatScreen(isSearchPresses: widget.isSearch,),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }

  Padding myCustomSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 45.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: double.infinity,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Search",
                contentPadding: EdgeInsets.only(left: 50.0),
                hintStyle: TextStyle(
                  color: secondaryTextColor,
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.isSearch = false;
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: secondaryTextColor,
              ))
        ],
      ),
    );
  }
}
