import 'package:claro_tools/src/components/drawer_menu.dart';
import 'package:claro_tools/src/widgets/widget_card_avisos.dart';
import 'package:flutter/material.dart';

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
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 1.5,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CardAviso(
                              title: 'Douglas Oliveira',
                              subtitle: 'Developement',
                              texto: const Text(
                                'Tentando melhorar o card de avisos, atualizar ele hoje',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              imageUrl:
                                  "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg",
                              icon: Icons.more_horiz,
                              onpressed: () {},
                            ),
                            CardAviso(
                              title: 'João é Sal',
                              subtitle: 'Developement',
                              texto: const Text(
                                'Tentando melhorar o card',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              imageUrl:
                                  "https://passcod.name/avatars/evil-sailor-whale.png",
                              icon: Icons.more_horiz,
                              onpressed: () {},
                            ),
                            CardAviso(
                              title: 'Douglas Oliveira',
                              subtitle: 'Developement',
                              texto: const Text(
                                'Tentando melhorar o card de avisos, atualizar ele hoje',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              imageUrl:
                                  "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg",
                              icon: Icons.more_horiz,
                              onpressed: () {},
                            ),
                            CardAviso(
                              title: 'João é Sal',
                              subtitle: 'Developement',
                              texto: const Text(
                                'Tentando melhorar o card',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              imageUrl:
                                  "https://passcod.name/avatars/evil-sailor-whale.png",
                              icon: Icons.more_horiz,
                              onpressed: () {},
                            ),
                          ],
                        ),
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
