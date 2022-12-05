import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}



class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  final TextEditingController _a = TextEditingController();
  final TextEditingController _b = TextEditingController();
  final TextEditingController _c = TextEditingController();
     String _test() {
    
    int _ai = int.parse(_a.text);
    int _bi = int.parse(_b.text);
    int _ci = int.parse(_c.text);
    int delta = _bi*_bi - 4*_ai*_ci;
    String text = "";
    if (delta > 0) {
      double x1 = (-_bi + sqrt(delta))/2*_ai;
      double x2 = (-_bi - sqrt(delta))/2*_ai;
      text = "Phương trình có hai nghiệm: x1= " + x1.toString() + " ; x2= " + x2.toString();
    }
    else  if (delta == 0) {
            double x = -_bi/2*_ai;
            text = "Phương trình có một nghiệm: x=" + x.toString();
          }
          else {
            text = "Phương trình vô nghiệm";
          }
    return text;
  }
  @override
  Widget build(BuildContext context) {
  

    return Form(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _a,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter your a',
            ),
            
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _b,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter your b',
            ),
            
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _c,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter your c',
            ),
            
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextButton(
                            onPressed: () async {
                              await showDialog<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(title: const Text("Result"),
                                    content: Text(_a.text + "x + " + _b.text + "y + " + _c.text + " . " + _test()),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                             child: const Text('Submit'),
                          ),
                                  
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 16.0),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       // Validate will return true if the form is valid, or false if
          //       // the form is invalid.
          //       // if () {
          //       //   // Process data.
          //       // }
          //     },
          //     child: const Text('Submit'),
          //   ),
          // ),
        ],  
      ),
    );
  }
}
