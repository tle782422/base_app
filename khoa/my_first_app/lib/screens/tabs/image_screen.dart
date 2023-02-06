import 'package:flutter/material.dart';
import 'package:my_first_app/data/content.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen(
      {Key? key,
      required this.data,
      })
      : super(key: key);

  final Content data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(data.image,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(data.avatar)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Text(data.name,
                        style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(data.username,
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
