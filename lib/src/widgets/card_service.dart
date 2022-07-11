import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  final double size;
  final Color color;
  final Widget icon;
  final Widget label;

  const SimpleCard({
    Key? key,
    this.size = 100,
    this.color = Colors.white,
    this.icon = const Icon(Icons.ac_unit),
    this.label = const Text('label'),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: EdgeInsets.all(8 / 100 * size),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8 / 100 * size),
        color: color,
      ),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (48 / 100 * size),
              height: (48 / 100 * size),
              child: FittedBox(
                fit: BoxFit.cover,
                child: icon,
              ),
            ),
            FittedBox(child: label),
          ],
        ),
      ),
    );
  }
}
