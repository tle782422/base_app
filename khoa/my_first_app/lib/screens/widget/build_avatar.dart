import 'package:flutter/material.dart';

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