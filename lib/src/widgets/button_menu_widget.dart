// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final Icon? icon;
  CustomButton({
    Key? key,
    required this.child,
    this.color = Colors.blue,
    required this.onPressed,
    this.borderRadius,
    this.icon,
  }) : super(key: key);

  factory CustomButton.icon({
    required Icon icon,
    required Widget title,
    VoidCallback? onPressed,
  }) =>
      CustomButton(
        child: title,
        onPressed: onPressed,
        icon: icon,
      );

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late final BorderRadius borderRadius;
  double elevation = 4;
  late final bool isDisable;

  @override
  void initState() {
    super.initState();
    borderRadius = widget.borderRadius ?? BorderRadius.circular(20);
    isDisable = widget.onPressed == null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isDisable ? Colors.grey[300] : widget.color,
      borderRadius: widget.borderRadius,
      elevation: isDisable ? 0 : elevation,
      child: InkWell(
        onTap: !isDisable
            ? null
            : () {
                widget.onPressed;
                setState(() {});
              },
        onTapDown: (_) {
          elevation = 10;
          setState(() {});
        },
        onTapCancel: () {
          elevation = 4;
          setState(() {});
        },
        borderRadius: widget.borderRadius,
        child: Container(
          height: 50,
          width: 200,
          alignment: Alignment.center,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (widget.icon != null) ...{
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: widget.icon!,
              )
            },
            widget.child,
          ]),
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
          ),
        ),
      ),
    );
  }
}
