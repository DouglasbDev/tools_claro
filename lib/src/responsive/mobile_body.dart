// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import '../view/home.dart';
import '../widgets/custom_text_form_field.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);
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
            Padding(
              padding: EdgeInsets.only(right: 45),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * .80,
                width: MediaQuery.of(context).size.height * .5,
                margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 10,
                      top: MediaQuery.of(context).size.width / 8),
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
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.asset(
                              'assets/images/claro_logo.png',
                              fit: BoxFit.contain,
                              width: MediaQuery.of(context).size.width / 20,
                              height: MediaQuery.of(context).size.height / 20,
                            ),
                          )),
                      
                      Text(
                        "Bem-vindo(a) ao portal Claro Tools",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 22, 
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        hint: 'Login',
                        suffix: Icons.alternate_email,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CustomTextField(
                        hint: 'Senha',
                        suffix: Icons.lock,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
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
                                fontWeight: FontWeight.w600
                                ),
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
                        height: 8,
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