import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:story_view/story_view.dart';
import 'package:get/get.dart';

class StatusInnerScreen extends StatefulWidget {
  final String imageIndex;
  final String profileImageIndex;
  final String title;
  final String time;

  const StatusInnerScreen({
    Key? key,
    required this.imageIndex,
    required this.profileImageIndex,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  _StatusInnerScreenState createState() => _StatusInnerScreenState();
}

class _StatusInnerScreenState extends State<StatusInnerScreen> {
  final StoryController storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            StoryView(
              controller: storyController,
              storyItems: [
                // StoryItem.text(
                //   title:
                //       "I guess you'd love to see more of our food. That's great.",
                //   backgroundColor: Colors.blue,
                // ),
                StoryItem.text(
                  title:"I guess you'd love to see more of our food. That's great.",
                  backgroundColor: Colors.red,
                  textStyle: TextStyle(
                    fontFamily: 'Dancing',
                    fontSize: 40,
                  ),
                ),
                StoryItem.inlineImage(
                  url:
                  "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                  controller: storyController,
                  caption: Text(
                    "Hektas, sektas and skatad",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                ),
                StoryItem.pageImage(
                  url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                  caption: "Working with gifs",
                  controller: storyController,
                ),
                // StoryItem.pageImage(
                //   url:
                //       "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
                //   caption: "Hello, from the other side",
                //   controller: storyController,
                // ),
                // StoryItem.pageImage(
                //   url:
                //       "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
                //   caption: "Hello, from the other side2",
                //   controller: storyController,
                // ),
              ],
              onStoryShow: (s) {
                print("Showing a story");
              },
              onComplete: () {
                print("Completed a cycle");
                Get.back();
              },
              progressPosition: ProgressPosition.top,
              repeat: false,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    color: defaultColor,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(widget.profileImageIndex))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: TextStyle(color: defaultColor, fontSize: 22.0),
                      ),
                      Text(
                        widget.time,
                        style: TextStyle(color: defaultColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        // body: Container(
        //   width: sizeWidth(context),
        //   height: sizeHeight(context),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: IconButton(
        //           icon: Icon(Icons.arrow_back,),
        //           color: defaultColor,
        //           onPressed: (){
        //             Get.back();
        //           },
        //         ),
        //       )
        //     ],
        //   ) ,
        // ),
      ),
    );
  }
}
