// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../view/home.dart';
import '../widgets/widget_text_form_field.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/claro_login.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 120,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  constraints: const BoxConstraints(
                      minWidth: 200,
                      maxWidth: 500,
                      minHeight: 300,
                      maxHeight: 500),
                  child: AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      height: 500,
                      width: MediaQuery.of(context).size.height * .5,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 18,
                            offset: Offset(3, 4),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(20),
                              child: Image.asset(
                                'assets/images/claro_logo.png',
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.height / 7,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Text(
                              "Bem-vindo(a) ao portal Claro Tools",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 44,
                          ),
                          const CustomTextField(
                            hint: 'Login',
                            suffix: Icons.alternate_email,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const CustomTextField(
                            hint: 'Senha',
                            suffix: Icons.remove_red_eye_sharp,
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          LayoutBuilder(builder: (context, constraints) {
                            return SizedBox(
                              width: constraints.maxWidth - 60,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                },
                                child: const Text(
                                  'Entrar',
                                  style: TextStyle(
                                      fontFamily: 'Sora',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith(
                                      (states) {
                                    return RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return const Color.fromARGB(
                                          255, 199, 0, 0);
                                    }
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.redAccent;
                                    }
                                    return const Color(0xffD52B1E);
                                  }),
                                ),
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'precisa de ajuda?',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffBDBFC7),
                                  fontFamily: 'Sora',
                                ),
                              ),
                              TextButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                          (states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return const Color.fromARGB(
                                          255, 199, 0, 0);
                                    }
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.redAccent;
                                    }
                                    return const Color(0xffD52B1E);
                                  }),
                                  textStyle: MaterialStateProperty.resolveWith<
                                      TextStyle?>((states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffD52B1E));
                                    }

                                    return const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffD52B1E),
                                        fontFamily: 'Sora');
                                  }),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Suporte",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
