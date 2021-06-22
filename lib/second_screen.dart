
import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>  with SingleTickerProviderStateMixin {

  late TabController _controller;
  int _currentIndex = 0;
  int _initialIndex = 0;

  _handleTabSelection() {
    setState(() {
      _currentIndex = _controller.index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 3, vsync: this, initialIndex: _initialIndex);
    _controller.addListener(_handleTabSelection);
    _currentIndex = _initialIndex == 0 ? 0 : _initialIndex;
    print(_currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
        controller: _controller,
        children: [
          bottomSheet1(),
          bottomSheet2(),
          bottomSheet3(),
        ],
      ),
      ),
    );
  }
  Widget bottomSheet1() {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 278,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                  children: List.generate(3, (index) => buildDot(index: index)))
            ],
          ),
        ),
      );
    });
  }
  Widget bottomSheet2() {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 278,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                  children: List.generate(3, (index) => buildDot(index: index)))
            ],
          ),
        ),
      );
    });
  }
  Widget bottomSheet3() {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 278,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                  children: List.generate(3, (index) => buildDot(index: index)))
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

  Container buildDot({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.red : secondaryTextColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

