import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.home_outlined), onPressed: () {}),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: const Icon(Icons.search_outlined), onPressed: () {}),
              const Spacer(
                flex: 2,
              ),
              IconButton(
                  icon: const Icon(Icons.chat_bubble_outline),
                  onPressed: () {}),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: const Icon(Icons.person_outline), onPressed: () {}),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.pink,
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          // Text("name:" + name!),
          // Text("username:" + username),
          // Text("password:" + password),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 50),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Discover",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 55,
            padding: const EdgeInsets.only(left: 20, top: 30),
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
                      image:
                          AssetImage("assets/pexels-jaime-reimer-2662116.jpg"),
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
                      image: AssetImage("assets/pexels-lumn-167699.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ])));
  }
}

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// FixedExtentScrollController fixedExtentScrollController =
//     new FixedExtentScrollController();

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _formKey,
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               const Padding(
//                   padding: EdgeInsets.only(left: 20, top: 50),
//                   child: Text(
//                     'Discover',
//                     style: TextStyle(
//                       fontSize: 45,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   )),
//               const Padding(
//                   padding: EdgeInsets.only(left: 17, top: 30),
//                   child: Text(
//                     "WHAT'S NEW TODAY",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   )),
//               Row(
//                 children: [
//                   ListView.builder(
//                     itemBuilder: (context, position) {                    
//                       return Card(
//                         child: Padding(
//                           padding: const EdgeInsets.all(16.0),
//                           child: Image(
//                             image: AssetImage('asset/pexels-jaime-reimer-2662116.jpg'),
//                           ),
//                           child: Text(
//                             position.toString(),
//                             style: const TextStyle(fontSize: 22.0),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ]));
//   }
// }
