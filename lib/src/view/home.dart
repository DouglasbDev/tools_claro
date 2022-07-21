// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables
import 'package:claro_tools/src/components/box_equipe.dart';
import 'package:flutter/material.dart';
import '../components/drawer_menu.dart';
import '../widgets/widget_button.dart';
import '../widgets/widget_card_avisos.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          highlightcolor: const Color(0xff1f1f1),
                          hovercolor: const Color(0xff1f1f1),
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
                          highlightcolor: const Color(0xff1f1f1),
                          hovercolor: const Color(0xff1f1f1),
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
                          highlightcolor: const Color(0xff1f1f1),
                          hovercolor: const Color(0xff1f1f1),
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
                              "https://engenharia360.com/wp-content/uploads/2019/05/esta-pessoa-nao-existe-engenharia360-4.png",
                          icon: Icons.more_horiz,
                          guiaAviso: const Text(
                            'Guia pratico tools.pdf',
                            style: TextStyle(fontSize: 10),
                          ),
                          dataAviso: const Text(
                            'postado as 8:23 em 20/07/2022',
                            style: TextStyle(fontSize: 10),
                          ),
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
                              "https://wl-incrivel.cf.tsp.li/resize/728x/jpg/998/af8/8012d855ecac748fdf628d682d.jpg",
                          icon: Icons.more_horiz,
                          onpressed: () {},
                          guiaAviso: const Text(
                            'Guia pratico tools.pdf',
                            style: TextStyle(fontSize: 10),
                          ),
                          dataAviso: const Text(
                            'postado as 8:23 em 20/07/2022',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
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
