  // late TextEditingController _a;
  // late TextEditingController _b;
  // late TextEditingController _c;

  // @override
  // void initState() {
  //   super.initState();
  //   _a = TextEditingController();
  //   _b = TextEditingController();
  //   _c = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   _a.dispose();
  //   _b.dispose();
  //   _c.dispose();
  //   super.dispose();
  // }

                  //         TextField(
                  //           controller: _a,
                  //           keyboardType: TextInputType.number,
                  //         ),
                  //         TextField(
                  //           controller: _b,
                  //           keyboardType: TextInputType.number,
                  //         ),
                  //         TextField(
                  //           controller: _c,
                  //           keyboardType: TextInputType.number,
                  //         ),
                  //         TextButton(
                  //           onPressed: () async {
                  //             await showDialog<void>(
                  //               context: context,
                  //               builder: (BuildContext context) {
                  //                 return AlertDialog(
                  //                   title: const Text("Result"),
                  //                   content: Text(_ham() + _test()),
                  //                   actions: <Widget>[
                  //                     TextButton(
                  //                       onPressed: () {
                  //                         Navigator.pop(context);
                  //                       },
                  //                       child: const Text('OK'),
                  //                     ),
                  //                   ],
                  //                 );
                  //               },
                  //             );
                  //           },
                  //           child: const Text("OK"),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );









// MaterialApp(
//       routes: <String, WidgetBuilder>{
//         '/': (BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(
//               title: Text(widget.title),
//             ),
//             body: Center(
//               child: Container(
//                 alignment: Alignment.bottomCenter,
//                 width: 200,
//                 height: 200,
//                 //padding: const EdgeInsets.fromLTRB(175, 40, 175, 40),
//                 decoration: const BoxDecoration(color: Colors.red),
//                 child: Row(
//                   children: <Widget>[
//                     const Card(
//                       child: Padding(
//                         padding: EdgeInsets.fromLTRB(175, 40, 175, 40),
//                         child: Text("bruh"),
//                       ),
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: <Widget>[

//                     ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//         '/about': (BuildContext context) {
//           return Scaffold(
//             appBar: AppBar(
//               title: const Text('About Route'),
//             ),
//           );
//         }
//       },
//     );


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Container(),
//             Container (
//               alignment: Alignment.center,
//               constraints: const BoxConstraints(
//                 maxWidth: 400,
//                 maxHeight: 100,
//               ),
//               color: Colors.blue,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   TextButton(
//                     style: TextButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       primary: Colors.white,
//                       padding: const EdgeInsets.all(16.0),
//                       textStyle: const TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {}, 
//                     child: const Text("Log in"), 
//                   ),
//                   //const SizedBox(width: 50,),
//                   TextButton(
//                     style: TextButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       primary: Colors.white,
//                       padding: const EdgeInsets.all(16.0),
//                       textStyle: const TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {}, 
//                     child: const Text("Register"), 
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//HOME_SCREEN
   // Widget build(BuildContext context) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       //elevation: 0,
    //       //backgroundColor: Colors.white24,
    //       //foregroundColor: Colors.black,
    //       //automaticallyImplyLeading: false,
    //       bottom: TabBar(
    //       controller: _tabController,
    //       tabs: const [
    //         Tab(icon: Icon(Icons.home)),
    //         Tab(icon: Icon(Icons.search)),
    //         Tab(icon: Icon(Icons.chat_bubble)),
    //         Tab(icon: Icon(Icons.person)),
    //       ],
    //     ),
    //     ),
    //     body: SingleChildScrollView(
    //       child: TabBarView(
    //         controller: _tabController,
    //         children: const <Widget>[
    //           // Column(
    //           //   children: <Widget>[
    //           //     // Text("name:" + name!),
    //           //     // Text("username:" + username),
    //           //     // Text("password:" + password),
    //           //     Container(
    //           //       margin: const EdgeInsets.symmetric(horizontal: 20),
    //           //       alignment: Alignment.centerLeft,
    //           //       child: const Text(
    //           //         "Discover",
    //           //         style: TextStyle(fontSize: 40),
    //           //       ),
    //           //     ),
    //           //     Container(
    //           //       height: 55,
    //           //       padding: const EdgeInsets.only(left: 20, top: 30),
    //           //       alignment: Alignment.centerLeft,
    //           //       child: const Text(
    //           //         "WHAT'S NEW TODAY",
    //           //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
    //           //       ),
    //           //     ),
    //           //     const TodayNewListView(),
    //           //     Container(
    //           //       height: 55,
    //           //       padding: const EdgeInsets.only(left: 20, top: 30),
    //           //       alignment: Alignment.centerLeft,
    //           //       child: const Text(
    //           //         "BROWSE ALL",
    //           //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
    //           //       ),
    //           //     ),
    //           //     const BrowseAll(),
    //           //     Container(
    //           //       height: 60,
    //           //       width: double.infinity,
    //           //       padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
    //           //       child: OutlinedButton(
    //           //         style: OutlinedButton.styleFrom(
    //           //           primary: Colors.black,
    //           //           textStyle: const TextStyle(
    //           //               fontSize: 16, fontWeight: FontWeight.bold),
    //           //           side: const BorderSide(width: 2.0, color: Colors.black),
    //           //         ),
    //           //         onPressed: () => {},
    //           //         child: const Text("SEE MORE"),
    //           //       ),
    //           //     ),
    //           //   ],
    //           // ),
    //           Center(
    //             child: Text("It's rainy here"),
    //           ),
    //           Center(
    //             child: Text("It's rainy here"),
    //           ),
    //           Center(
    //             child: Text("It's sunny here"),
    //           ),
    //           Center(
    //             child: Text("It's sunny here"),
    //           ),
    //         ],
    //       ),
    //     ),
    //     // bottomNavigationBar: TabBar(
    //     //   controller: _tabController,
    //     //   tabs: const [
    //     //     Tab(icon: Icon(Icons.home)),
    //     //     Tab(icon: Icon(Icons.search)),
    //     //     Tab(icon: Icon(Icons.chat_bubble)),
    //     //     Tab(icon: Icon(Icons.person)),
    //     //   ],
    //     // ),
    //     // bottomNavigationBar: BottomNavigationBar(
    //     //   items: const <BottomNavigationBarItem>[
    //     //     BottomNavigationBarItem(
    //     //       icon: Icon(Icons.home),
    //     //       label: "Home",
    //     //     ),
    //     //     BottomNavigationBarItem(
    //     //       icon: Icon(Icons.search),
    //     //       label: "Search",
    //     //     ),
    //     //     BottomNavigationBarItem(
    //     //       icon: Icon(Icons.chat_bubble),
    //     //       label: "Chat",
    //     //     ),
    //     //     BottomNavigationBarItem(
    //     //       icon: Icon(Icons.person),
    //     //       label: "Profile",
    //     //     ),
    //     //   ],
    //     //   selectedItemColor: Colors.red,
    //     //   unselectedItemColor: Colors.black45,
    //     // ),
    //     // bottomNavigationBar: BottomAppBar(
    //     //   //shape: const CircularNotchedRectangle(),
    //     //   color: Colors.white,
    //     //   child: IconTheme(
    //     //     data: const IconThemeData(color: Colors.black45),
    //     //     child: Row(
    //     //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     //       children: <Widget>[
    //     //         IconButton(
    //     //           tooltip: 'Open navigation menu',
    //     //           icon: const Icon(Icons.home),
    //     //           onPressed: () {},
    //     //         ),
    //     //         IconButton(
    //     //           tooltip: 'Search',
    //     //           icon: const Icon(Icons.search),
    //     //           onPressed: () {},
    //     //         ),
    //     //         //const Spacer(),
    //     //         Ink(
    //     //           decoration: const ShapeDecoration(
    //     //             color: Colors.red,
    //     //             shape: CircleBorder(),
    //     //           ),
    //     //           child: Padding(
    //     //             padding: const EdgeInsets.all(8.0),
    //     //             child: IconButton(
    //     //                 tooltip: 'New',
    //     //                 color: Colors.white,
    //     //                 onPressed: () {},

    //     //                 icon: const Icon(Icons.add)),
    //     //           ),
    //     //         ),
    //     //         IconButton(
    //     //           tooltip: 'Chat',
    //     //           icon: const Icon(Icons.chat_bubble),
    //     //           onPressed: () {},
    //     //         ),
    //     //         IconButton(
    //     //           tooltip: 'Person',
    //     //           icon: const Icon(Icons.person),
    //     //           onPressed: () {},
    //     //         ),
    //     //       ],
    //     //     ),
    //     //   ),
    //     // ),
    //     // floatingActionButton: FloatingActionButton(
    //     //   onPressed: () {},
    //     //   child: const Icon(Icons.add),
    //     // ),
    //     // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   );




    // import 'package:flutter/material.dart';
  // import 'dart:math';
  
  // void main() => runApp(MyApp());

  
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String _a = "";
  // String _b = "";
  // String _c = "";

  // String _test() {
  //   int _ai = int.parse(_a);
  //   int _bi = int.parse(_b);
  //   int _ci = int.parse(_c);
  //   int delta = _bi*_bi - 4*_ai*_ci;
  //   String text = "";
  //   if (delta > 0) {
  //     double x1 = (-_bi + sqrt(delta))/2*_ai;
  //     double x2 = (-_bi - sqrt(delta))/2*_ai;
  //     text = "Phương trình có hai nghiệm: x1= " + x1.toString() + " ; x2= " + x2.toString();
  //   }
  //   else  if (delta == 0) {
  //           double x = -_bi/2*_ai;
  //           text = "Phương trình có một nghiệm: x=" + x.toString();
  //         }
  //         else {
  //           text = "Phương trình vô nghiệm";
  //         }
  //   return text;
  // }
  // String _xetdau(String so) {
  //   String text = "";
  //   if (so != "") {
  //     if (so[0] != "-" && so[0] != "0") {
  //       text = text + "+ " + so;
  //     }
  //     else  if (so[0] == "-" && so[0] != "0") {
  //               text = text + so;
  //           }
  //   }
  //   return text;
  // }
  // String _ham() {
  //   String text = _a + "x^2 " + _xetdau(_b);
  //   if (_xetdau(_b) == "") {
  //     text = text + _xetdau(_c) + " = 0 . ";
  //   }
  //   else {
  //     text = text + "x " + _xetdau(_c) + " = 0 . ";
  //   }
  //   return text;
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text(""),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: const <Widget>[
  //           Text(
  //             '',
  //           ),
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed:  () {
  //             Navigator.push(context, MaterialPageRoute<void>(
  //               builder: (BuildContext context) {
  //                 return Scaffold(
  //                   appBar: AppBar(
  //                     //leading: ,
  //                     title: const Text('Ax^2 + Bx + C = 0'),

  //                   ),
  //                   body: Center(
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: <Widget>[
  //                         Form(
  //                           key: _formKey,
  //                           child: Column(
  //                             children: <Widget>[
  //                                 TextFormField(
  //                                   keyboardType: TextInputType.number,
  //                                   autofocus: true,
  //                                   focusNode: FocusNode(),
  //                                   decoration: const InputDecoration(
  //                                   hintText: 'Enter A',
  //                                   ),
  //                                   validator: (String? value) {
  //                                     if (value == null || value.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)) {
  //                                       return 'Please enter number';
  //                                     }
  //                                     else {_a = value;}
  //                                     return null;
  //                                   },
  //                                 ),
  //                                 TextFormField(
  //                                   keyboardType: TextInputType.number,
  //                                   decoration: const InputDecoration(
  //                                   hintText: 'Enter B',
  //                                   ),
  //                                   validator: (String? value) {
  //                                     if (value == null || value.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)) {
  //                                       return 'Please enter number';
  //                                     }
  //                                     else {_b = value;}
  //                                     return null;
  //                                   },
  //                                 ),
  //                                 TextFormField(
  //                                   keyboardType: TextInputType.number,
  //                                   decoration: const InputDecoration(
  //                                   hintText: 'Enter C',
  //                                   ),
  //                                   validator: (String? value) {
  //                                     if (value == null || value.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)) {
  //                                       return 'Please enter number';
  //                                     }
  //                                     else {_c = value;}
  //                                     return null;
  //                                   },
  //                                 ),
  //                                 Padding(
  //                                   padding: const EdgeInsets.symmetric(vertical: 16.0),
  //                                   child: ElevatedButton(
  //                                     onPressed: () async {
  //                                       if (_formKey.currentState!.validate()) {
  //                                         await showDialog<void>(
  //                                           context: context,
  //                                           builder: (BuildContext context) {
  //                                             return AlertDialog(
  //                                               title: const Text("Result"),
  //                                               content: Text(_ham() + _test()),
  //                                               actions: <Widget>[
  //                                                 TextButton(
  //                                                   onPressed: () {
  //                                                     Navigator.pop(context);
  //                                                   },
  //                                                   child: const Text('OK'),
  //                                                 ),
  //                                               ],
  //                                             );
  //                                           },
  //                                         );
  //                                       }
  //                                     },
  //                                     child: const Text('Ok'),
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ));
  //           },
  //       tooltip: 'ax^2 + bx + c = 0',
  //       child: const Icon(Icons.add),
  //     ),
  //   );
  // }