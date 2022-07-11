import 'package:claro_tools/src/widgets/card_service.dart';
import 'package:claro_tools/src/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'button_menu.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: AnimatedContainer(
          width: isOpen ? 380 : 80,
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
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    isOpen
                        ? Container(
                            margin: EdgeInsets.only(top: 10),
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
                        : const SizedBox(
                            height: 30,
                          ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
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
                  : CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                    ),
              const SizedBox(
                height: 10,
              ),
              const SimpleCard(
                size: 50,
                icon: Icon(Icons.search),
                label: Text('Pesquisar'),
              ),
              SizedBox(
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
                      children: [
                        Text(
                          'tools v.01.2022 by redeinova',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonMenu(),
                        SizedBox(
                          width: 10,
                        ),
                        ButtonMenu(),
                      ],
                    )
                  : const SimpleCard(
                      size: 50,
                      icon: Icon(Icons.search),
                      label: Text('Pesquisar'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
