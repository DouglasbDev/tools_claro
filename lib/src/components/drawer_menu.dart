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
                      ? InkWell(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isOpen = !isOpen;
                              });
                            },
                            icon: const Icon(
                              LineIcons.alternateArrowCircleLeft,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        )
                      : InkWell(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isOpen = !isOpen;
                              });
                            },
                            icon: const Icon(
                              LineIcons.alternateArrowCircleRight,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                ],
              ),
            ),
            isOpen
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        hint: 'Pesquisa',
                        prefix: Icons.search,
                      ),
                      Center(
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
                : SimpleCard(
                    color: Colors.white60,
                    size: 50,
                    label: const Text('label'),
                    borderRadius: BorderRadius.circular(50),
                    icon: Icon(
                      Icons.search,
                      color: Color(0xff8C8C8C),
                      size: 100,
                    ),
                  ),
            const SizedBox(
              height: 30,
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
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomButton.icon(
                        sizeh: 36,
                        color: Colors.white,
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
                        width: 30,
                      ),
                      Expanded(
                        child: CustomButton.icon(
                          sizeh: 36,
                          color: Colors.white,
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
                    color: Color(
                      0xff8C8C8C,
                    ),
                  ),
            !isOpen
                ? const Icon(
                    Icons.exit_to_app_outlined,
                    color: Color(0xff8C8C8C),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
