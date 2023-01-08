import 'package:flutter/material.dart';

import 'image_screen.dart';

class TodayNewListView extends StatefulWidget {
  const TodayNewListView({Key? key}) : super(key: key);

  @override
  TodayNewListViewState createState() => TodayNewListViewState();
}

class TodayNewListViewState extends State<TodayNewListView> {
  final List<String> entries = <String>[
    'assets/images/a1.jpg',
    'assets/images/a1.jpg',
    'assets/images/a1.jpg'
  ];
  final List<String> _avatar = <String>[
    'assets/icons/avatar.png',
    'assets/icons/avatar.png',
    'assets/icons/avatar.png'
  ];
  final List<String> _name = <String>['ABC', 'BCD', 'CDE'];
  final List<String> _email = <String>['@A', '@B', '@C'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.47,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImageScreen(
                          image: entries[index],
                          name: _name[index],
                          email: _email[index],
                          avatar: _avatar[index],
                        ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(entries[index],
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.38,
                    width: MediaQuery.of(context).size.width * 0.9),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(_avatar[index])),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_name[index],
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(_email[index],
                            style: const TextStyle(
                                fontSize: 10, color: Colors.black)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
