import 'package:claro_tools/src/view/home.dart';
import 'package:flutter/material.dart';

import 'behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      scrollBehavior: ScrollBehaviorCustom(),
      debugShowCheckedModeBanner: false,
    );
  }
}
