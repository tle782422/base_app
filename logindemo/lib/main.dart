import 'package:flutter/material.dart';
import 'package:logindemo/database/user_db.dart';
// import 'package:logindemo/login_screen.dart';
// import 'package:logindemo/signup_screen.dart';
// import 'package:logindemo/signup_screen_ss.dart';
import 'package:logindemo/screen/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'provider/login_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserDB.instance.init();
  return runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider())],
      child: const MyApp()));
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
      // routes: {
      //   WelcomeScreen.routeName: (context) => const WelcomeScreen(),
      //   SignupScreen.routeName: (context) => const SignupScreen(),
      //   LoginScreen.routeName: (context) => const LoginScreen(),
      //   SignupScreenSS.routeName: (context) => const SignupScreenSS(),
      // },
    );
  }
}
