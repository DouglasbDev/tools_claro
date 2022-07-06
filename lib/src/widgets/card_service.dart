import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
    );
  }
}

