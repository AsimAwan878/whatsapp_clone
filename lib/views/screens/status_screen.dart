import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/camera_screen.dart';
import 'package:flutter_chat/views/screens/my_status.dart';
import 'package:flutter_chat/views/screens/status_inner_screen.dart';
import 'package:get/get.dart';

class StatusScreen extends StatelessWidget {
  final List<Map> _userlList = [
    {
      'userStatusImage': 'assets/images/1.png',
      'userProfileImage': 'assets/images/Layer 23.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': '10 minutes ago',
    },
    {
      'userStatusImage': 'assets/images/2.png',
      'userProfileImage': 'assets/images/Layer 28.png',
      'userIsStoryPresent': true,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/3.png',
      'userProfileImage': 'assets/images/Layer 29.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/8.png',
      'userProfileImage': 'assets/images/Layer 31.png',
      'userIsStoryPresent': false,
      'userTitle': "Lina School Friend",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/Layer 12.png',
      'userProfileImage': 'assets/images/Layer 32.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/1.png',
      'userProfileImage': 'assets/images/Layer 33.png',
      'userIsStoryPresent': true,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/2.png',
      'userProfileImage': 'assets/images/Layer 34.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/3.png',
      'userProfileImage': 'assets/images/Layer 23.png',
      'userIsStoryPresent': false,
      'userTitle': "Lina School Friend",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/8.png',
      'userProfileImage': 'assets/images/Layer 28.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/Layer 12.png',
      'userProfileImage': 'assets/images/Layer 29.png',
      'userIsStoryPresent': false,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/1.png',
      'userProfileImage': 'assets/images/Layer 31.png',
      'userIsStoryPresent': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userStatusImage': 'assets/images/2.png',
      'userProfileImage': 'assets/images/Layer 32.png',
      'userIsStoryPresent': false,
      'userTitle': "Lina School Friend",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: sizeWidth(context),
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Get.to(CameraScreen());
                          },
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/4.png"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                  width: 25.0,
                                  height: 25.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: onlineColor),
                                  child: Icon(
                                    Icons.add,
                                    color: defaultColor,
                                    size: 20.0,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Status",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Tap to add status update"),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              Get.to(MyStatusScreen(
                                  imageIndex: "assets/images/4.png"));
                            },
                            child: Icon(Icons.more_horiz)),
                        SizedBox(
                          width: 8.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: sizeWidth(context),
                  height: 35.0,
                  color: Colors.grey.shade300,
                  child: Text(
                    "Users Status",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: _userlList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.5),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(
                                StatusInnerScreen(
                                  imageIndex: _userlList[index]
                                      ['userStatusImage'],
                                  profileImageIndex: _userlList[index]
                                      ['userProfileImage'],
                                  title: _userlList[index]['userTitle'],
                                  time: _userlList[index]['userSubtitle'],
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: defaultColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 1,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            _userlList[index]
                                                ['userStatusImage'],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        _userlList[index]['userTitle'],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      Text(
                                        _userlList[index]['userSubtitle'],
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: secondaryTextColor,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Spacer(),
                                  Spacer(),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Get.to(CameraScreen());
              },
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 30.0,
                  color: defaultColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
