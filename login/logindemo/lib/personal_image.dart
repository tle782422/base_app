import 'package:flutter/material.dart';

class PersonalImage extends StatelessWidget {
  const PersonalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          const SizedBox(width: 15),
          Column(
            children: [
              Container(
                height: 350,
                width: 360,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/pexels-jaime-reimer-2662116.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          Container(
            height: 350,
            width: 360,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pexels-lumn-167699.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
