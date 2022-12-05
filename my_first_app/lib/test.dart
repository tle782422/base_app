import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Chuong trinh dang nhap';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
        appBar: AppBar(title: const Text(_title)),
      ),
    );
  }
}

// void _incrementCounter() {
//     // setState(() {
//     // This call to setState tells the Flutter framework that something has
//     // changed in this State, which causes it to rerun the build method below
//     // so that the display can reflect the updated values. If we changed
//     // _counter without calling setState(), then the build method would not be
//     // called again, and so nothing would appear to happen.
//     _counter++;
//     print(_counter);
//     // });
//   }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://mfiles.alphacoders.com/919/919866.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                    ),
                    onPressed: () => "chuyen trang dang nhap",
                    // Navigator.of(context).pushNamed(LoginScreen.routeName),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () => "chuyen trang dang ky",
// Navigator.of(context).pushNamed(SignupScreen.routeName),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}