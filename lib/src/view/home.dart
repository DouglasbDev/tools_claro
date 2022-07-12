import 'package:claro_tools/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import '../widgets/button_menu_widget.dart';
import '../widgets/card_service.dart';
import '../widgets/widget_text_form_field.dart';

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
          SizedBox(
            width: 200,
          ),
          ButtonWidget(
            nome: 'Home',
            onPressed: () {},
          ),
          SizedBox(
            width: 50,
          ),
          ButtonWidget(
            nome: 'Widget',
            onPressed: () {},
          ),
          SizedBox(
            width: 50,
          ),
          ButtonWidget(
            nome: 'Loja',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
