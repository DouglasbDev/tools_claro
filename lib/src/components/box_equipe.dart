import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BoxEquipe extends StatelessWidget {
  const BoxEquipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 282,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(5, 5),
            blurRadius: 10,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            const Text(
              'Equipe',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                  ),
                  Positioned(
                      top: 4,
                      left: 15,
                      child: RawMaterialButton(
                        onPressed: () {},
                        constraints:
                            const BoxConstraints(maxHeight: 12, maxWidth: 12),
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                  ),
                  Positioned(
                      top: 4,
                      left: 15,
                      child: RawMaterialButton(
                        onPressed: () {},
                        constraints:
                            const BoxConstraints(maxHeight: 12, maxWidth: 12),
                        elevation: 2.0,
                        fillColor: Colors.green,
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                  ),
                  Positioned(
                      top: 4,
                      left: 15,
                      child: RawMaterialButton(
                        onPressed: () {},
                        constraints:
                            const BoxConstraints(maxHeight: 12, maxWidth: 12),
                        elevation: 2.0,
                        fillColor: Colors.green,
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                  ),
                  Positioned(
                      top: 4,
                      left: 15,
                      child: RawMaterialButton(
                        onPressed: () {},
                        constraints:
                            const BoxConstraints(maxHeight: 12, maxWidth: 12),
                        elevation: 2.0,
                        fillColor: Colors.red,
                        padding: const EdgeInsets.all(15.0),
                        shape: const CircleBorder(),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
