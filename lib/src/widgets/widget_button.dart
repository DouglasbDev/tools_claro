// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  final Icon? icon;
  final double sizeh;
  final double sizew;
  final Color hovercolor;
  final Color highlightcolor;

  const CustomButton._({
    Key? key,
    required this.child,
    this.color = Colors.blue,
    required this.onPressed,
    this.borderRadius,
    this.icon,
    this.sizeh = 50,
    this.sizew = 150,
    this.hovercolor = const Color(0xff088AFF),
    this.highlightcolor = const Color(0xffD52B1E),
  }) : super(key: key);

  factory CustomButton({
    required Widget child,
    VoidCallback? onPressed,
    BorderRadius? borderRadius,
    Color color = Colors.blue,
    double sizeh = 50,
    double sizew = 150,
    Color hovercolor = const Color(0xff088AFF),
    Color highlightcolor = const Color(0xffD52B1E),
  }) =>
      CustomButton._(
        child: child,
        onPressed: onPressed,
        borderRadius: borderRadius,
        color: color,
        sizeh: sizeh,
        sizew: sizew,
        hovercolor: hovercolor,
        highlightcolor: highlightcolor,
      );

  factory CustomButton.icon({
    required Icon icon,
    Widget child = const Text(''),
    VoidCallback? onPressed,
    BorderRadius? borderRadius,
    Color color = Colors.blue,
    double sizeh = 50,
    double sizew = 150,
    Color hovercolor = const Color(0xff088AFF),
    Color highlightcolor = const Color(0xffD52B1E),
  }) =>
      CustomButton._(
        child: child,
        onPressed: onPressed,
        icon: icon,
        borderRadius: borderRadius,
        color: color,
        sizeh: sizeh,
        sizew: sizew,
        hovercolor: hovercolor,
        highlightcolor: highlightcolor,
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
      borderRadius: borderRadius,
      elevation: isDisable ? 0 : elevation,
      child: InkWell(
        highlightColor: widget.highlightcolor,
        hoverColor: widget.hovercolor,
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
        borderRadius: borderRadius,
        child: Container(
          height: widget.sizeh,
          width: widget.sizew,
          alignment: Alignment.center,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (widget.icon != null) ...{
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: widget.icon!,
              )
            },
            widget.child,
          ]),
          decoration: BoxDecoration(
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}
