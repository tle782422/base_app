import 'package:flutter/material.dart';
import 'package:my_first_app/screens/logout/logout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.username, required this.password, this.name}) : super(key: key);

  final String username;
  final String password;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        foregroundColor: Colors.black,
        //automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Text("name:" + name!),
            // Text("username:" + username),
            // Text("password:" + password),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Discover",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              height: 55,
              padding: const EdgeInsets.only(left: 20,top: 30),
              alignment: Alignment.centerLeft,
              child: const Text(
                "WHAT'S NEW TODAY",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogoutScreen())),
                children: [
                  const SizedBox(width: 15),
                  Container(
                    height: 350,
                    width: 360,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/a1.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 350,
                    width: 360,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/a1.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 55,
              padding: const EdgeInsets.only(left: 20,top: 30),
              alignment: Alignment.centerLeft,
              child: const Text(
                "BROWSE ALL",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble),
      //       label: "Chat",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.black45,
      // ),
      bottomNavigationBar: BottomAppBar(
        //shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: IconTheme(
        data: const IconThemeData(color: Colors.black45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            //const Spacer(),
            IconButton(tooltip: 'New',onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(
              tooltip: 'Chat',
              icon: const Icon(Icons.chat_bubble),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Person',
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}