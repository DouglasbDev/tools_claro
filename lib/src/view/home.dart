import 'package:claro_tools/src/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import '../widgets/card_service.dart';
import '../widgets/custom_text_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   decoration: const BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey,
            //         spreadRadius: 1,
            //         blurRadius: 15,
            //         offset: Offset(3, 4),
            //       )
            //     ],
            //     borderRadius: BorderRadius.all(Radius.circular(30)),
            //     color: Color.fromARGB(255, 255, 55, 55),
            //   ),
            //   padding: const EdgeInsets.all(12),
            //   margin: const EdgeInsets.all(10),
            //   alignment: Alignment.topLeft,
            //   width: 300,
            //   height: double.infinity,
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(10),
            //             child: Container(
            //               margin: EdgeInsets.only(top: 10),
            //               padding: const EdgeInsets.all(3),
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Image.asset(
            //                 'assets/images/claro_logo.png',
            //                 fit: BoxFit.fitWidth,
            //                 width: MediaQuery.of(context).size.height / 9,
            //               ),
            //             ),
            //           ),
            //           const SizedBox(
            //             width: 80,
            //           ),
            //           const Expanded(
            //               child: CircleAvatar(
            //             backgroundImage: NetworkImage(
            //                 "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
            //           )),
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 40,
            //       ),
            //       const Align(
            //         alignment: Alignment.topLeft,
            //         child: CustomTextField(
            //           hint: 'Pesquisa',
            //           prefix: Icons.search,
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 60,
            //       ),
            //       const Center(
            //         child: Align(
            //           alignment: Alignment.centerLeft,
            //           child: Text(
            //             "Microsserviços",
            //             style: TextStyle(
            //               fontSize: 25,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 50,
            //       ),
            //       Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(2),
            //             child: GridView.builder(
            //               shrinkWrap: true,
            //               gridDelegate:
            //                   const SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisCount: 3,
            //                 crossAxisSpacing: 20.0,
            //                 mainAxisSpacing: 20.0,
            //               ),
            //               itemCount: 9,
            //               itemBuilder: (context, index) {
            //                 return const Card(child: Icon(Icons.access_alarms));
            //               },
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            DrawerMenu(),
          ],
        ),
      ),
    );
  }
}
