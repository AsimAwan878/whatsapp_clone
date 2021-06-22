import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/audioCall_screen.dart';
import 'package:flutter_chat/views/screens/call_info_screen.dart';
import 'package:flutter_chat/views/screens/chat_inner_screen.dart';
import 'package:flutter_chat/views/screens/new_call_screen.dart';
import 'package:get/get.dart';

class CallScreen extends StatelessWidget {
  final List<Map> _userlList = [
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': '10 minutes ago',
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userIsMissedCall': true,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userIsMissedCall': false,
      'userTitle': "Lina School Friend",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 33.png',
      'userIsMissedCall': true,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 34.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userIsMissedCall': false,
      'userTitle': "Lina School Friend",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userIsMissedCall': false,
      'userTitle': "Mera Murad",
      'userSubtitle': 'Yesterday 6:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userIsMissedCall': false,
      'userTitle': "John Smith",
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userIsMissedCall': false,
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: _userlList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(CallInfoScreen(
                              imageIndex: _userlList[index]['userProfileImage'],
                              title: _userlList[index]['userTitle'],
                            ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: defaultColor,
                            ),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 12.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            _userlList[index]
                                                ['userProfileImage'],
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _userlList[index]['userTitle']
                                          .toUpperCase(),
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
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_downward,
                                          color: _userlList[index]
                                                  ['userIsMissedCall']
                                              ? onlineColor
                                              : Colors.red,
                                        ),
                                        Text(
                                          _userlList[index]['userSubtitle']
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: secondaryTextColor,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Spacer(),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(ChatInnerScreen(
                                            imageIndex: _userlList[index]
                                                ['userProfileImage'],
                                            title: _userlList[index]
                                                ['userTitle'],
                                          subtitle: "Last seen today 4:30 pm",));
                                      },
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: defaultColor,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Icon(
                                          Icons.message,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(AudioCallScreen());
                                      },
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: defaultColor,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Icon(
                                          Icons.call,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12.0),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Get.to(NewCallScreen());
              },
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: Icon(
                  Icons.add_ic_call,
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
