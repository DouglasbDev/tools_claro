import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
        child: RawMaterialButton(
          constraints: BoxConstraints(minHeight: 40, minWidth: 80),
          fillColor: Color(0xff1f1f1),
          onPressed: onPressed,
          elevation: 2.0,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
