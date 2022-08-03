// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables
import 'dart:math';

import 'package:claro_tools/src/components/box_equipe.dart';
import 'package:flutter/material.dart';
import '../../behavior.dart';
import '../components/drawer_menu.dart';
import '../widgets/widget_button.dart';
import '../widgets/card_avisos_widget.dart';
import '../components/avisos_builder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Row(
        children: [
          DrawerMenu(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 0),
              child: SizedBox(
                width: MediaQuery.of(context).size.height / 0.86,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          child: const Text("Home"),
                          color: Colors.white,
                          highlightcolor: const Color(0x0ff1f1f1),
                          hovercolor: const Color(0x0ff1f1f1),
                          sizeh: 40,
                          sizew: 69,
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        CustomButton(
                          child: const Text("Widgets"),
                          color: Colors.white,
                          highlightcolor: const Color(0x0ff1f1f1),
                          hovercolor: const Color(0x0ff1f1f1),
                          sizeh: 40,
                          sizew: 69,
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomButton(
                          child: const Text("Microsserviços"),
                          color: Colors.white,
                          highlightcolor: const Color(0x0ff1f1f1),
                          hovercolor: const Color(0x0ff1f1f1),
                          sizew: 144,
                          sizeh: 40,
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: const [BoxEquipe()],
                    ),
                    Row(
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
                        const SizedBox(
                          width: 20,
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
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Avisos',
                          style: TextStyle(
                              color: Color(0xffD52B1E),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: const [AvisosBuilder()],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
