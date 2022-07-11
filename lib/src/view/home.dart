import 'package:claro_tools/src/widgets/button_menu.dart';
import 'package:claro_tools/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import '../widgets/card_service.dart';
import '../widgets/custom_text_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerMenu(),
          ButtonMenu(),
          ButtonMenu(),
          ButtonMenu(),
        ],
      ),
    );
  }
}
