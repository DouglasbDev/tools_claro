import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
