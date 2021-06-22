import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.5),
              child: Container(
                width: double.infinity,
                height: 100.0,
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
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            image: AssetImage("assets/images/4.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Smith",
                          style: TextStyle(fontSize: 22.0,color: primaryColor),
                        ),
                        Text(
                          "Hey! I am using flutter chat",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(
                      Icons.message,
                      color: primaryColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(fontSize: 22.0,color: primaryColor),
                      ),
                      Text(
                        "Theme, wallpapers, chat history",
                        style: TextStyle(
                            fontSize: 15.0, color: secondaryTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(
                      Icons.notifications,
                      color: primaryColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(fontSize: 22.0,color: primaryColor),
                      ),
                      Text(
                        "Message, group & call tones",
                        style: TextStyle(
                            fontSize: 15.0, color: secondaryTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(
                      Icons.data_usage,
                      color: primaryColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Storage and data",
                        style: TextStyle(fontSize: 22.0,color: primaryColor),
                      ),
                      Text(
                        "Network usage, auto_download",
                        style: TextStyle(
                            fontSize: 15.0, color: secondaryTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(
                      Icons.help_outline,
                      color: primaryColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(fontSize: 22.0,color: primaryColor),
                      ),
                      Text(
                        "Help center, contact us, privacy policy",
                        style: TextStyle(
                            fontSize: 15.0, color: secondaryTextColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    child: Icon(
                      Icons.supervisor_account_sharp,
                      color: primaryColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Invite a friend",
                        style: TextStyle(fontSize: 22.0,color: primaryColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "from",
                    style: TextStyle(fontSize: 22.0,color: secondaryTextColor),
                  ),
                  Text(
                    "VisTech Ltd.",
                    style: TextStyle(
                        fontSize: 32.0, color: primaryColor),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: sizeHeight(context) / 3,
            //   width: sizeWidth(context),
            //   padding: EdgeInsets.only(top: 10.0),
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.only(
            //         bottomRight: Radius.circular(200.0),
            //         bottomLeft: Radius.circular(200.0)),
            //   ),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       IconButton(
            //         icon: Icon(
            //           Icons.arrow_back,
            //           color: defaultColor,
            //         ),
            //         onPressed: () {
            //           Get.back();
            //         },
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 12.0),
            //         child: Text(
            //           "Settings",
            //           style: TextStyle(
            //               color: defaultColor,
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20.0),
            //         ),
            //       ),
            //       Spacer(),
            //       IconButton(
            //         icon: Icon(
            //           Icons.message_sharp,
            //           color: defaultColor,
            //         ),
            //         onPressed: () {},
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 8.0,right: 12.0),
            //         child: Container(
            //           width: 30.0,
            //           height: 30.0,
            //           decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             image: DecorationImage(
            //               image: AssetImage("assets/images/4.png"),
            //               fit: BoxFit.cover
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Container(
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: 50.0,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             width: 35.0,
            //             height: 40.0,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(5.0),
            //               color: primaryColor,
            //             ),
            //             child: Icon(
            //               Icons.lock,
            //               color: defaultColor,
            //             ),
            //           ),
            //           SizedBox(
            //             width: 10.0,
            //           ),
            //           Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Change Password",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 20.0),
            //               ),
            //               Text(
            //                 "Update and modify your password",
            //                 style: TextStyle(
            //                     color: secondaryTextColor, fontSize: 14.0),
            //               ),
            //             ],
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
