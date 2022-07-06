import 'package:claro_tools/src/view/home.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_form_field.dart';

class page_login extends StatefulWidget {
  page_login({Key? key}) : super(key: key);

  @override
  State<page_login> createState() => _page_loginState();
}

class _page_loginState extends State<page_login> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            if (isDesktop(context))
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/claro_login.png',
                  fit: BoxFit.cover,
                ),
              ),
            Expanded(
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
                  padding: const EdgeInsets.only(bottom: 150),
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
                      const FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          "Bem-vindo(a) ao portal Claro Tools",
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
                      ElevatedButton(
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
                          maximumSize:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed)) {}
                            if (states.contains(MaterialState.hovered)) {}
                            return const Size(400, 55);
                          }),
                          minimumSize:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.pressed)) {}
                            if (states.contains(MaterialState.hovered)) {}
                            return const Size(300, 55);
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
          ],
        ),
      ),
    );
  }
}
