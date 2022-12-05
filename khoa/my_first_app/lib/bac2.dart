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