import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';

class MyStatusScreen extends StatelessWidget {
  final String imageIndex;

  MyStatusScreen({Key? key, required this.imageIndex}) : super(key: key);

  final List<Map> _userlList = [
    {
      'userStoryImage': 'assets/images/1.png',
      'userSubtitle': '10 minutes ago',
    },
    {
      'userStoryImage': 'assets/images/2.png',
      'userSubtitle': 'Today 4:50 Pm',
    },
    {
      'userStoryImage': 'assets/images/3.png',
      'userSubtitle': 'Today 4:50 Pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25.0,
        iconTheme: IconThemeData(color: defaultColor),
        title: Row(
          children: [
            SizedBox(
              width: 8.0,
            ),
            Text("My Status"),
            Spacer(),
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(imageIndex),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 8.0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                          // Get.to(ChatInnerScreen());
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          _userlList[index]['userStoryImage'],
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
                                    "Johnnie Bryan Hunt",
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
                              Icon(Icons.delete),
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
    );
  }
}
