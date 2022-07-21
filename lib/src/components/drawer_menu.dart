// ignore_for_file: sort_child_properties_last
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AnimatedContainer(
        width: isOpen ? 380 : 100,
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0xffD52B1E), //TODO var cores
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
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isOpen
                      ? Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/claro_logo.png',
                            fit: BoxFit.fitWidth,
                            width: MediaQuery.of(context).size.height / 9,
                          ),
                        )
                      : const SizedBox.shrink(),
                  isOpen
                      ? SizedBox(
                          height: 80,
                          width: 80,
                          child: Stack(
                            clipBehavior: Clip.none,
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                  bottom: 10,
                                  right: -10,
                                  child: InkWell(
                                    child: RawMaterialButton(
                                      constraints: BoxConstraints(
                                          minHeight: 40, minWidth: 80),
                                      fillColor: Color(0xff1f1f1),
                                      onPressed: () {
                                        setState(() {
                                          isOpen = !isOpen;
                                        });
                                      },
                                      elevation: 2.0,
                                      child: const Icon(
                                        LineIcons.alternateArrowCircleLeft,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 80,
                          width: 80,
                          child: Stack(
                            clipBehavior: Clip.none,
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                  bottom: 10,
                                  right: -10,
                                  child: InkWell(
                                    child: RawMaterialButton(
                                      constraints: BoxConstraints(
                                          minHeight: 40, minWidth: 80),
                                      fillColor: Color(0xff1f1f1),
                                      onPressed: () {
                                        setState(() {
                                          isOpen = !isOpen;
                                        });
                                      },
                                      elevation: 2.0,
                                      child: const Icon(
                                        LineIcons.alternateArrowCircleLeft,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.all(5.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                    ),
                                  )),
                            ],
                          ),
                        )
                ],
              ),
            ),
            isOpen
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-i8YqO-8AOiNEIRZEW22gQbRswOIjIDyhpQ&usqp=CAU",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomTextField(
                        hint: 'Pesquisa',
                        prefix: Icons.search,
                      ),
                      const Center(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Microsserviços",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(
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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isOpen ? 3 : 1,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return const SimpleCard(
                    size: 100,
                  );
                },
              ),
            ),
            isOpen
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: Text(
                          'tools v.01.2022 by redeinova',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      Expanded(
                          child: CustomButton.icon(
                        sizeh: 36,
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
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: CustomButton.icon(
                          sizeh: 36,
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
                      ),
                    ],
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
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
