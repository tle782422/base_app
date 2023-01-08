import 'package:flutter/material.dart';

class BuildTitle extends StatelessWidget {
  ///build a title
  const BuildTitle({
    required this.text,
    required this.size,
    Key? key,
  }) : super(key: key);

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: size, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class BuildTextForm extends StatelessWidget {
  ///build a textformfield
  const BuildTextForm({
    required this.controller,
    required this.hintText,
    required this.textvali,
    required this.obscure,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String textvali;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        obscureText: obscure,
        controller: controller,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return textvali;
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(width: 2)),
          errorBorder: const OutlineInputBorder(),
          focusedErrorBorder:
              const OutlineInputBorder(borderSide: BorderSide(width: 2)),
        ),
      ),
    );
  }
}

class BuildUserAva extends StatelessWidget {
  ///build a user avatar, name and username
  const BuildUserAva({
    required this.avatar,
    required this.username,
    required this.name,
    required this.fontcolor,
    Key? key,
  }) : super(key: key);

  final String avatar;
  final String username;
  final String name;
  final Color fontcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
            backgroundImage: AssetImage(avatar)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontSize: 18,
                    color: fontcolor,
                    fontWeight: FontWeight.bold)),
            Text(username,
                style: TextStyle(fontSize: 13, color: fontcolor)),
          ],
        ),
      ],
    );
  }
}