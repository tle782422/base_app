import 'package:flutter/material.dart';
import 'package:logindemo/screen/chats_screen.dart';
import 'package:logindemo/screen/home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20, top: 60),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Search",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search all photos',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter photo';
                  }
                  return null;
                },
              ),
            ),
          ]),
        ));
  }
}
