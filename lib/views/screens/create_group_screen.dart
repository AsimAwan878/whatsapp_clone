
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/pages/group_controller.dart';
import 'package:flutter_chat/views/screens/chat_inner_screen.dart';
import 'package:get/get.dart';

class CreateGroupScreen extends StatelessWidget {
  GroupController controller = Get.put(GroupController());

  final int noOfParticipants;

   CreateGroupScreen({Key? key,required this.noOfParticipants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
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
                  Text(
                    "Add subject",
                    style:
                    TextStyle(color: defaultColor, fontSize: 14.0),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            children: [
              Container(
                height: 120.0,
                color: defaultColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,

                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.camera_alt,color: defaultColor,),
                          ),
                            SizedBox(width: 10.0,),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                print(controller.groupController);
                              },
                              child: Container(
                                height: 40.0,
                                child: TextFormField(
                                  controller: controller.groupController,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    enabledBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    hintText: "Type group subject here...",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Icon(Icons.emoji_emotions_rounded,color: secondaryTextColor,),
                          SizedBox(width: 10.0,),
                        ],
                      ),
                      Text("Provide a group subject and optional group icon",style: TextStyle(
                        color: secondaryTextColor
                      ),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 10.0,),
                          Text(
                            "Participants ${noOfParticipants}",
                            style:
                            TextStyle(color: secondaryTextColor, fontSize: 14.0),
                          ),
                          SizedBox(width: 10.0,),
                        ],
                      ),
                      SizedBox(width: 10.0,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 100.0),
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.check,
                  size: 30.0,
                  color: defaultColor,
                ),
                onPressed: () {
                    Get.off(ChatInnerScreen(imageIndex: "assets/images/Layer 23.png", title: controller.groupController.text,subtitle: "${noOfParticipants} participants in this group",));

                },
              ),
            ),
          ),

        ],
      ),

    );
  }
}
