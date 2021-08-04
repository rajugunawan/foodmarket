import 'package:flutter/material.dart';
import 'package:tested/ui/pages/pages.dart';
import 'package:get/get.dart';
void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(),
    );
  }
}