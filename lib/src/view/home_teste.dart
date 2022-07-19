// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables
import 'dart:math';

import 'package:claro_tools/src/components/box_equipe.dart';
import 'package:flutter/material.dart';
import '../components/drawer_menu.dart';
import '../widgets/button_menu_widget.dart';
import '../widgets/custom_avisos.dart';

class HomeTeste extends StatefulWidget {
  HomeTeste({Key? key}) : super(key: key);

  @override
  State<HomeTeste> createState() => _HomeTesteState();
}

class _HomeTesteState extends State<HomeTeste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerMenu(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 46),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 0.9,
                width: MediaQuery.of(context).size.height / 0.86,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          child: const Text("Home"),
                          color: Colors.white,
                          sizeh: 40,
                          sizew: 69,
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        CustomButton(
                          child: const Text("Widgets"),
                          color: Colors.white,
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
                          sizeh: 40,
                          sizew: 144,
                          borderRadius: BorderRadius.circular(8),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
                        SizedBox(
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
