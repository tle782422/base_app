import 'package:logindemo/signup_screen_ss.dart';
import 'package:logindemo/welcome_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  // static const routeName = '/signup-screen';
  // static const String _title = 'Sign Up Screen';
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen())),
                icon: const Icon(Icons.arrow_back)),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter email:',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email!';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
                child: TextFormField(
                  maxLength: 20,
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter password:',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreenSS()));
                    }
                  },
                  child: const Text(
                    'NEXT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, minimumSize: const Size(1000, 60)),
                ))
          ]),
    );
  }
}
