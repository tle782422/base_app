import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen(
      {Key? key,
      required this.image,
      required this.name,
      required this.email,
      required this.avatar})
      : super(key: key);

  final String image;
  final String avatar;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(image,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/icons/avatar.png")),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Text(name,
                        style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(email,
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                ),
                const Spacer(),
                CloseButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
