import 'package:flutter/material.dart';

class SimpleCard extends StatefulWidget {
  final double size;
  final Color color;
  final Widget icon;
  final Widget label;
  final BorderRadius? borderRadius;

  const SimpleCard({
    Key? key,
    this.size = 100,
    this.color = Colors.white,
    this.icon = const Icon(Icons.ac_unit),
    this.label = const Text('label'),
    this.borderRadius,
  }) : super(key: key);

  @override
  State<SimpleCard> createState() => _SimpleCardState();
}

class _SimpleCardState extends State<SimpleCard> {
  late final BorderRadius borderRadius;
  late final double size = 100;
  @override
  void initState() {
    super.initState();
    borderRadius = widget.borderRadius ?? BorderRadius.circular(8 / 100 * size);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      padding: EdgeInsets.all(8 / 100 * widget.size),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: widget.color,
      ),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (48 / 100 * widget.size),
              height: (48 / 100 * widget.size),
              child: FittedBox(
                fit: BoxFit.cover,
                child: widget.icon,
              ),
            ),
            FittedBox(child: widget.label),
          ],
        ),
      ),
    );
  }
}
