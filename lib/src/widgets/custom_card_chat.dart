import 'package:flutter/material.dart';

class CustomCardChat extends StatelessWidget {
  const CustomCardChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
    );
  }
}
