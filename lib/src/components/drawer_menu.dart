// ignore_for_file: sort_child_properties_last
import 'package:claro_tools/src/components/colors.dart';
import 'package:claro_tools/src/components/logo.dart';
import 'package:claro_tools/src/components/menu_button.dart';
import 'package:claro_tools/src/components/rounded_image.dart';
import 'package:claro_tools/src/components/title_widget.dart';
import 'package:claro_tools/src/widgets/widget_button.dart';
import 'package:claro_tools/src/widgets/card_service.dart';
import 'package:claro_tools/src/widgets/widget_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

// ignore: must_be_immutable
class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  List<String> images = [
    "images/ibase_de_dados.png",
    "images/ijornada.png",
    "images/itrajetos.png",
    "images/iestoque.png",
    "images/ipesquisa.png",
    "images/itarefas.png",
    "images/itrajetos.png",
    "images/iavisos.png",
  ];

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isOpen = true;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    late Widget logoTratada;

    if (isOpen) {
      logoTratada = Logo();
    } else {
      logoTratada = SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          AnimatedContainer(
            width: isOpen ? 380 : 100,
            duration: const Duration(milliseconds: 300),
            onEnd: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: AppColors.red, //TODO var cores
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: Offset(3, 4),
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      logoTratada,
                      const SizedBox(height: 15),
                      isOpen
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                RoundedImage(),
                                SizedBox(height: 15),
                                TitleWidget(title: 'Microsserviços'),
                                SizedBox(height: 20),
                                CustomTextField(
                                  padding: EdgeInsets.zero,
                                  hint: 'Pesquisa',
                                  prefix: Icons.search,
                                ),
                                SizedBox(height: 20),
                              ],
                            )
                          : Column(
                              children: [
                                SizedBox(height: 60),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                    color: Colors.white24,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.white70,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: isOpen ? 3 : 1,
                        crossAxisSpacing: isOpen ? 20.0 : 5,
                        mainAxisSpacing: isOpen ? 20 : 5),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:
                            EdgeInsets.only(right: 12, left: 12, bottom: 12),
                        child: SimpleCard(
                          size: 100,
                        ),
                      );
                    },
                  ),
                ),
                isOpen
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: SizedBox(
                          height: 40,
                          child: Visibility(
                            visible: isVisible,
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const Text(
                                  'tools v.01.2022 by redeinova',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                CustomButton.icon(
                                  sizeh: 36,
                                  sizew: 100,
                                  color: Colors.white,
                                  highlightcolor: Color(0xff1f1f1),
                                  hovercolor: Color(0xff1f1f1),
                                  icon: const Icon(
                                    LineIcons.questionCircle,
                                    color: Colors.grey,
                                  ),
                                  child: const Text(
                                    "Suporte",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CustomButton.icon(
                                  sizeh: 36,
                                  sizew: 70,
                                  color: Colors.white,
                                  highlightcolor: Color(0xff1f1f1),
                                  hovercolor: Color(0xff1f1f1),
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Text(
                                    "Sair",
                                    style: TextStyle(
                                      color: Color(0xff8C8C8C),
                                    ),
                                  ),
                                  icon: const Icon(
                                    Icons.exit_to_app_outlined,
                                    color: Color(0xff8C8C8C),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const Icon(
                        LineIcons.questionCircle,
                        color: Colors.white,
                      ),
                !isOpen
                    ? const Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.white,
                      )
                    : const SizedBox.shrink(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          isOpen
              ? Positioned(
                  right: 10,
                  top: 10,
                  child: MenuButton(
                      icon: LineIcons.alternateArrowCircleLeft,
                      onPressed: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                )
              : Positioned(
                  right: 20,
                  top: 20,
                  child: MenuButton(
                      icon: LineIcons.alternateArrowCircleRight,
                      onPressed: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      }),
                )
        ],
      ),
    );
  }
}
