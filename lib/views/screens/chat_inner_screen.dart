import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/audioCall_screen.dart';
import 'package:flutter_chat/views/screens/camera_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChatInnerScreen extends StatefulWidget {
  final String imageIndex;
  final String title;
  final String subtitle;
  bool isAttachment = false;

  ChatInnerScreen(
      {Key? key,
      required this.imageIndex,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  _ChatInnerScreenState createState() => _ChatInnerScreenState();
}

class _ChatInnerScreenState extends State<ChatInnerScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25.0,
        iconTheme: IconThemeData(color: defaultColor),
        title: Row(
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(widget.imageIndex), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 8.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(color: defaultColor, fontSize: 16.0),
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(color: defaultColor, fontSize: 8.0),
                ),
              ],
            ),
          ],
        ),
        elevation: (0.0),
        actions: [
          SvgPicture.asset(svgAssets[0], color: defaultColor),
          SizedBox(
            width: 18.0,
          ),
          GestureDetector(
              onTap: () {
                Get.to(AudioCallScreen());
              },
              child: SvgPicture.asset(svgAssets[1], color: defaultColor)),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: sizeWidth(context) / 1.5,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: Text(
                              "Message has been removed",
                              style: TextStyle(
                                color: defaultColor,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "5 days ago",
                          style: TextStyle(color: secondaryTextColor),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(height: 18.0),
                        Container(
                          width: sizeWidth(context) / 1.5,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: Text(
                              "Message has been removed",
                              style: TextStyle(
                                color: defaultColor,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "5 days ago",
                          style: TextStyle(color: secondaryTextColor),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(height: 18.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          width: sizeWidth(context) / 1.5,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Layer 12.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "5 days ago",
                          style: TextStyle(color: secondaryTextColor),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(height: 18.0),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 7.0),
                          width: sizeWidth(context) / 1.5,
                          height: 250.0,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/8.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Join Pakistan's most economical tourism company and enjoy your holidays with us",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: defaultColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "3 days mega trip to Kashmir Neelum Sharda Arang Kel",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: defaultColor, fontSize: 10.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.business,
                                        color: defaultColor,
                                        size: 18.0,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "The VisTech.",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: defaultColor,
                                            fontSize: 14.0),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: defaultColor,
                                          borderRadius:
                                              BorderRadius.circular(2.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          child: Text(
                                            "Premium",
                                            style:
                                                TextStyle(color: primaryColor),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "For Families ",
                                        style: TextStyle(
                                            color: defaultColor,
                                            fontSize: 10.0),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text("l",
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontSize: 16.0)),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text("3 Days Tour",
                                          style: TextStyle(
                                              color: defaultColor,
                                              fontSize: 10.0)),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Go See North Presents 3 Days Mega Tour From Lahore",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: defaultColor, fontSize: 10.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  widget.isAttachment == true
                      ? Container(
                    child: bottomSheet(),
                  )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: defaultColor,
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Type a message",
                    style: TextStyle(color: secondaryTextColor, fontSize: 18.0),
                  ),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.attachment,
                        color: secondaryTextColor,
                      ),
                      onPressed: () {
                        setState(() {
                          if (widget.isAttachment == false) {
                            widget.isAttachment = true;
                          } else {
                            widget.isAttachment = false;
                          }
                        });
                        // showModalBottomSheet(
                        //   context: context,
                        //   backgroundColor: Colors.transparent,
                        //   builder: (builder) {
                        //     return bottomSheet();
                        //   },
                        // );
                      }),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        Get.to(CameraScreen());
                      },
                      child: SvgPicture.asset(svgAssets[2])),
                  Spacer(),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: primaryColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.keyboard_voice_sharp,
                      color: defaultColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 350.0,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                spreadRadius: 3,
                color: Colors.black12,
                offset: Offset(0, -3),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.home_outlined, primaryColor, "Property"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.business, Colors.pink, "Project"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(
                      Icons.business_center_outlined, Colors.blueGrey, "Job"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.supervised_user_circle_outlined,
                      primaryColor, "Broker"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.business, Colors.pink, "Estate"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.person, Colors.blueGrey, "Developer"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.location_on_outlined, primaryColor, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(
                      Icons.camera_alt_outlined, Colors.pink, "Project"),
                  SizedBox(
                    width: 100,
                  ),
                ],
              ),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: List.generate(3, (index) => buildDot(index: index)))
            ],
          ),
        ),
      );
    });
  }

  Widget iconCreation(IconData icons, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icons,
              // semanticLabel: "Help",
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
// Container buildDot({required int index}) {
//   return Container(
//     margin: EdgeInsets.only(right: 5),
//     height: 6,
//     width: 6,
//     decoration: BoxDecoration(
//       color: currentPage == index ? Colors.red : secondaryTextColor,
//       borderRadius: BorderRadius.circular(3),
//     ),
//   );
// }
}
