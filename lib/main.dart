import 'package:crcbuzze/screren/Home/view/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),)
      ],
    )
  );
}