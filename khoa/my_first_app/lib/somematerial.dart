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