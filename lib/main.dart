import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tubewithgetx/route/page_route.dart';
import 'custom/color_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Kids Funny Videos',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        initialRoute: AppPage.INITIAL,
        getPages: AppPage.routes,
      );
  }
}
