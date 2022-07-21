import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
        color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-i8YqO-8AOiNEIRZEW22gQbRswOIjIDyhpQ&usqp=CAU",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
