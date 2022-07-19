import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardChat extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final VoidCallback? onpressed;
  final double sizew;

  const CustomCardChat({
    Key? key,
    this.imageUrl,
    this.title,
    this.subtitle,
    this.icon,
    this.onpressed,
    this.sizew = 400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        elevation: 10,
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
            child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(imageUrl!),
                ),
                title: Text(title!),
                subtitle: Text(subtitle!),
                trailing: Icon(
                  icon,
                  size: 27,
                )),
          ),
        ),
      ),
    );
  }
}
