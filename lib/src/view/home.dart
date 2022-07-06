import 'package:flutter/material.dart';
import '../widgets/card_service.dart';
import '../widgets/custom_text_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
                      BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(3, 4),
                    )
                    ],
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          width: 300,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListTile(
                    title: Text("Tools"),
                  )),
                  Expanded(
                    child: ListTile(
                    title: Text("USUARIO"),
                  )),
                ],
              ),
              const SizedBox(height: 40,),
               const Align(
                alignment: Alignment.topLeft,
                child:  CustomTextField(
                    hint: 'Pesquisa',
                    prefix: Icons.search,
                ),
              ),
              const SizedBox(height: 30,),
              const Center(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Serviços",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: const [
                  SimpleCard()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
