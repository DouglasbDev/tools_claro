import 'package:flutter/material.dart';

class CardChat extends StatelessWidget {
  final String? texto;
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final VoidCallback? onpressed;

  const CardChat({
    Key? key,
    this.imageUrl,
    this.title,
    this.subtitle,
    this.icon,
    this.onpressed,
    this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        elevation: 5,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                        imageUrl!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title!,
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(subtitle!),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(texto!),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    icon!,
                    size: 27,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
