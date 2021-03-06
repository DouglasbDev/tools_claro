import 'package:flutter/material.dart';

class CardAviso extends StatelessWidget {
  final Widget texto;
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final Widget dataAviso;
  final Widget guiaAviso;
  final IconData? icon;
  final VoidCallback? onpressed;

  const CardAviso({
    Key? key,
    this.imageUrl,
    this.title,
    this.subtitle,
    this.icon,
    this.onpressed,
    this.texto = const Text(''),
    this.dataAviso = const Text(''),
    this.guiaAviso = const Text(''),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Wrap(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
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
                                style: const TextStyle(fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(subtitle!),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          icon!,
                          size: 27,
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20), child: texto),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        guiaAviso,
                        dataAviso,
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
