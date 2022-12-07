import 'package:flutter/material.dart';

class BrowseAll extends StatefulWidget {
  const BrowseAll({Key? key}) : super(key: key);

  @override
  BrowseAllState createState() => BrowseAllState();
}

class BrowseAllState extends State<BrowseAll> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 770,
      child: GridView.builder(
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 150.0,
        ),
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/a1.jpg", fit: BoxFit.fill)
          );
        },
      ),
    );
  }
}
