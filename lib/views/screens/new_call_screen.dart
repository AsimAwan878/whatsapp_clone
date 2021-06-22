
import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';

class NewCallScreen extends StatefulWidget {
  bool search = false;
  @override
  _NewCallScreenState createState() => _NewCallScreenState();
}

class _NewCallScreenState extends State<NewCallScreen> {
  final List<Map> _userlList = [
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userTitle': "Muhammad Uzair",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userTitle': "Charles Jackson",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userTitle': "HTG2",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userTitle': "HTG2",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 33.png',
      'userTitle': "HTG 6",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 34.png',
      'userTitle': "HTG 6",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userTitle': "HTG 4",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: widget.search == true
              ? myCustomSearchBar()
              : AppBar(
            leadingWidth: 25.0,
            iconTheme: IconThemeData(color: defaultColor),
            title: Row(
              children: [
                SizedBox(width: 8.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select Contact",
                      style:
                      TextStyle(color: defaultColor, fontSize: 18.0),
                    ),
                    Text(
                      "Choose to make a new call",
                      style:
                      TextStyle(color: defaultColor, fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
            elevation: (0.0),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  //showSearch(context: context, delegate: DataSearch());
                  setState(() {
                    widget.search = true;
                  });
                },
              ),
              SizedBox(
                width: 8,
              )
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 1,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: _userlList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.5),
                          child: GestureDetector(
                            onTap: () {
                              // Get.to(ChatInnerScreen(
                              //   imageIndex: _userlList[index]["userProfileImage"],
                              //   title: _userlList[index]["userTitle"],
                              // ));
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
                                                _userlList[index]
                                                ['userProfileImage'],
                                              ),
                                              fit: BoxFit.cover)),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward,size: 30.0,
                    color: defaultColor,),
                  onPressed: (){
                    // Get.to(ContactScreen());
                  },

                ),
              ),
            ),
          ],
        )
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
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: defaultColor,
                    width: 1.0,
                  ),
                ),
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
                  widget.search = false;
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
