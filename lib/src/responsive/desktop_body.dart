import 'package:flutter/material.dart';

import '../view/home.dart';
import '../widgets/custom_text_form_field.dart';

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
            Expanded(
              child: Padding(
                 padding: EdgeInsets.only(right: 20),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: MediaQuery.of(context).size.height * .57,
                  width: MediaQuery.of(context).size.height * .5,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 1.5,
                      top: MediaQuery.of(context).size.width / 6),
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
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 100),
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
                          child: Text(
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
                          suffix: Icons.lock,
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .2,
                          height: MediaQuery.of(context).size.height * .06,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
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
                              shape: MaterialStateProperty.resolveWith((states) {
                                return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8));
                              }),
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                      (states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return const Color.fromARGB(255, 199, 0, 0);
                                }
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.redAccent;
                                }
                                return const Color.fromARGB(255, 255, 55, 55);
                              }),
                            ),
                          ),
                        ),
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
                                color: Color.fromARGB(189, 189, 191, 199),
                                fontFamily: 'Sora',
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return const Color.fromARGB(255, 199, 0, 0);
                                  }
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors.redAccent;
                                  }
                                  return const Color.fromARGB(255, 255, 55, 55);
                                }),
                                textStyle:
                                    MaterialStateProperty.resolveWith<TextStyle?>(
                                        (states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red);
                                  }
                                  if (states.contains(MaterialState.hovered)) {
                                    return const TextStyle(
                                        color: Colors.redAccent);
                                  }
                                  return const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red,
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
          ],
        ),
      ),
    );
  }
}