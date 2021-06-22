import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat/utils/constants.dart';
import 'package:flutter_chat/views/screens/camera_screen.dart';
import 'package:flutter_chat/views/screens/home_screen.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      //Status BAr
      systemNavigationBarColor: primaryColor,
      systemNavigationBarIconBrightness:
          Brightness.light, //Bottom of Screen Button
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
          fontFamily: 'Josefin Sans',
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: defaultColor),
              backgroundColor: primaryColor, brightness: Brightness.dark)),
      title: "FlutterChat App",
    );
  }
}
