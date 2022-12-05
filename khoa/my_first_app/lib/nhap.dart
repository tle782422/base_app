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