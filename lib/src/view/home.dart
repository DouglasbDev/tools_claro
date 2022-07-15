import 'package:claro_tools/src/components/drawer_menu.dart';
import 'package:claro_tools/src/widgets/custom_card.dart';
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
    return Stack(children: [
      Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerMenu(),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Avisos'),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 1.5,
                      ),
                      child: Row(
                        children: [
                          CardChat(
                            title: 'Douglas Oliveira',
                            subtitle: 'Developement',
                            texto:
                                'Tentando deixar de ser burro, mas esta dificil',
                            imageUrl:
                                "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg",
                            icon: Icons.more_horiz,
                            onpressed: () {},
                          ),
                          CardChat(
                            title: 'João é Sal',
                            subtitle: 'Developement',
                            texto: 'King of animation',
                            imageUrl:
                                "https://passcod.name/avatars/evil-sailor-whale.png",
                            icon: Icons.more_horiz,
                            onpressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // CustomButton(
            //   child: const Text("Sair"),
            //   onPressed: () {},
            // ),
            // const SizedBox(
            //   width: 50,
            // ),
            // CustomButton(
            //   sizew: 50,
            //   child: const Text("Sair"),
            //   onPressed: () {},
            // ),
            // const SizedBox(
            //   width: 50,
            // ),
            // CustomButton(
            //   child: const Text("Sair"),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    ]);
  }
}
