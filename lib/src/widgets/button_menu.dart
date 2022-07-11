import 'package:flutter/material.dart';

class ButtonMenu extends StatefulWidget {
  
  ButtonMenu({Key? key}) : super(key: key);

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (48),
              height: (48),
              child: FittedBox(
                fit: BoxFit.cover,
                child: OutlinedButton(onPressed: () {}, child: Text('Teste')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
