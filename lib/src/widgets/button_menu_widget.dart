import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String nome;
  final double size;
  final Color color;
  final Widget icon;
  final VoidCallback? onPressed;
  const ButtonWidget({
    Key? key,
    required this.nome,
    this.size = 70,
    this.color = Colors.white,
    required this.onPressed,
    this.icon = const Icon(Icons.ac_unit),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

        // Padding(
        //   padding: EdgeInsets.all(5),
        //   child: InkWell(
        //     onTap: onPressed,
        //     child: Container(
        //       padding: EdgeInsets.all(10),
        //       height: size,
        //       width: 100,
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: Expanded(
        //         child: Row(
        //           children: [
        //             Expanded(child: Icon(Icons.ac_unit)),
        //             Text(
        //               nome,
        //               style: const TextStyle(color: Colors.black),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // );

        ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return const Color.fromARGB(255, 199, 0, 0);
          }
          if (states.contains(MaterialState.hovered)) {
            return Colors.redAccent;
          }
          return Colors.white;
        }),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            nome,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
