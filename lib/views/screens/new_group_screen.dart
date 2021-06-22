import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/create_group_screen.dart';
import 'package:get/get.dart';

class NewGroupScreen extends StatefulWidget {
  bool _search = false;
  bool _select = false;
  int _itemCount =0;

  @override
  _NewGroupScreenState createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  final List<Map> _userlList = [
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userTitle': "Muhammad Uzair",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userTitle': "Charles Jackson",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userTitle': "HTG2",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userTitle': "HTG2",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 33.png',
      'userTitle': "HTG 6",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 34.png',
      'userTitle': "HTG 6",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 23.png',
      'userTitle': "HTG 4",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 28.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 29.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 31.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
    {
      'userProfileImage': 'assets/images/Layer 32.png',
      'userTitle': "HTG7",
      'userSubtitle': 'Hey! I am using Flutter Chat',
      'isSelect': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: widget._search == true
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
                            "New Group",
                            style:
                                TextStyle(color: defaultColor, fontSize: 18.0),
                          ),
                          widget._itemCount ==0
                              ? Text(
                            "Add Participants",
                            style:
                                TextStyle(color: defaultColor, fontSize: 14.0),
                          )
                          : Text(
                           "${widget._itemCount} Participants",
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
                          widget._search = true;
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget._select
                    ? Column(
                  children: [
                    Container(
                      height: 100.0,
                      color: defaultColor,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _userlList.length,
                          itemBuilder:
                              (BuildContext context, int index) {
                            if (_userlList[index]['isSelect'] == true) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _userlList[index]['isSelect'] =
                                    false;
                                    widget._itemCount--;
                                    if(widget._itemCount ==0)
                                    {
                                      widget._select = false;
                                    }

                                  });
                                },
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              vertical: 8.0,
                                              horizontal: 8.0),
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(30.0),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      _userlList[index][
                                                      'userProfileImage'],
                                                    ),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: defaultColor),
                                          child: Icon(
                                            Icons.cancel,
                                            color: primaryColor,
                                            size: 30.0,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Container(
                                      width: 50.0,
                                      child: Text(
                                        _userlList[index]['userTitle'],
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                  ],
                )
                    :Container(),
                Expanded(
                  child: SingleChildScrollView(
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: GestureDetector(
                                  onTap: () {
                                    if (_userlList[index]['isSelect'] == false) {
                                      setState(() {
                                        _userlList[index]['isSelect'] = true;
                                        widget._itemCount++;
                                        widget._select = true;
                                      });
                                    } else {
                                      setState(() {
                                        _userlList[index]['isSelect'] = false;
                                        widget._itemCount--;
                                        if(widget._itemCount ==0)
                                        {
                                          widget._select = false;
                                        }
                                      });
                                    }
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
                                        Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 8.0),
                                              child: Container(
                                                width: 60.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                          _userlList[index][
                                                              'userProfileImage'],
                                                        ),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            _userlList[index]['isSelect']
                                                ? Container(
                                                    width: 30.0,
                                                    height: 30.0,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: primaryColor),
                                                    child: Icon(
                                                      Icons.check,
                                                      color: defaultColor,
                                                      size: 16.0,
                                                    ),
                                                  )
                                                : SizedBox(),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                ),
              ],
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
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30.0,
                    color: defaultColor,
                  ),
                  onPressed: () {
                    Get.off(CreateGroupScreen(noOfParticipants: widget._itemCount,));
                  },
                ),
              ),
            ),
          ],
        ));
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
                  widget._search = false;
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
