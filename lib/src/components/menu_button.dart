import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;

  const MenuButton({Key? key, this.onPressed, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: InkWell(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
