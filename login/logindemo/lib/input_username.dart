import 'package:logindemo/bloc/register2_bloc.dart';
import 'package:logindemo/home_screen.dart';
import 'package:logindemo/sign_up_screen.dart';
import 'package:flutter/material.dart';

class InputUsername extends StatelessWidget {
  InputUsername({Key? key}) : super(key: key);
  // final TextEditingController username = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final register2 = Register2Bloc();
  // static const routeName = '/signup-screen-ss';
  // static const String _title = 'Sign Up Screen';
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen())),
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
                  onChanged: (value) => register2.username = value,
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
            StreamBuilder<String>(
              stream: register2.errorStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Center(child: Text(snapshot.data.toString()));
                } else {
                  return const Text("");
                }
              },
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: ElevatedButton(
                  onPressed: () {
                    if (register2.register2()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
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
    ));
  }
}
