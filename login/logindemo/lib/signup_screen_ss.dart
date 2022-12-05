import 'package:logindemo/signup_screen.dart';
import 'package:flutter/material.dart';

class SignupScreenSS extends StatelessWidget {
  const SignupScreenSS({Key? key}) : super(key: key);
  // static const routeName = '/signup-screen-ss';
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

TextEditingController username = TextEditingController();

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
                        builder: (context) => const SignupScreen())),
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
                  controller: username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter username:',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username!';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, minimumSize: const Size(1000, 60)),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                child: Text(
                  "By signing up, you agree to Photo's Terms of Service and Privacy Policy.",
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.w400,
                  ),
                )),
          ]),
    );
  }
}
