import 'package:flutter/material.dart';
import 'package:logindemo/screen/home_screen.dart';
import 'package:logindemo/screen/search_screen.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({Key? key}) : super(key: key);
  final List<String> _avatar = <String>[
    'assets/avatar.jpg',
    'assets/avatar.jpg',
    'assets/avatar.jpg',
    'assets/avatar.jpg'
  ];
  final List<String> _name = <String>[
    'James',
    'Will Kenny',
    'Beth Williams',
    'Rev Shawn'
  ];
  final List<String> _text = <String>['@A', '@B', '@C', '@D'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: const Icon(Icons.search_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchScreen()));
                  }),
              const Spacer(
                flex: 2,
              ),
              IconButton(
                  icon: const Icon(Icons.chat_bubble_outline),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatsScreen()));
                  }),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: const Icon(Icons.person_outline),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.pink,
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            child: const Text(
              "Chats",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _avatar.length,
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(_avatar[index])),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(_name[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                Text(_text[index],
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.black)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ]));
  }
}
