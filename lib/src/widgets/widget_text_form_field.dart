// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? label;
  final EdgeInsetsGeometry padding;
  final String? hint;
  final IconData? icon;
  final IconData? prefix;
  final IconData? suffix;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;
  final void Function(String text)? onChanged;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    this.label,
    this.hint,
    this.icon,
    this.prefix,
    this.suffix,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
    this.padding = const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            label: label,
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            hintText: hint,
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontFamily: 'Sora'),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color(0xffD52B1E)),
            ),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: Color.fromARGB(255, 255, 0, 0))),
            icon: icon == null
                ? null
                : Icon(
                    icon,
                    color: const Color(0xffD52B1E),
                  ),
            suffixIcon: suffix == null
                ? null
                : Icon(suffix, color: const Color(0xffD52B1E)),
            prefixIcon:
                prefix == null ? null : Icon(prefix, color: Colors.black),
          )),
    );
  }
}

@immutable
class UserModel {
  final String name;
  final String email;
  final String password;

  UserModel({
    this.name = '',
    this.email = '',
    this.password = '',
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? password,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
