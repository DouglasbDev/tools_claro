import 'package:claro_tools/src/components/drawer_menu.dart';
import 'package:claro_tools/src/widgets/custom_card_chat.dart';
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
          const SizedBox(
            width: 200,
          ),
          CustomButton(
            child: const Text("Sair"),
            onPressed: () {},
          ),
          const SizedBox(
            width: 50,
          ),
          CustomButton(
            sizew: 50,
            child: const Text("Sair"),
            onPressed: () {},
          ),
          const SizedBox(
            width: 50,
          ),
          CustomButton(
            child: const Text("Sair"),
            onPressed: () {},
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 600),
                child: Row(
                  children: const [
                    CustomCardChat(),
                    CustomCardChat(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
