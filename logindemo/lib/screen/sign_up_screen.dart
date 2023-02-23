import 'package:logindemo/bloc/register_bloc.dart';
import 'package:logindemo/screen/input_username.dart';
import 'package:logindemo/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  // final TextEditingController email = TextEditingController();
  // final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final register1 = Register1Bloc();
  // static const routeName = '/signup-screen';
  // static const String _title = 'Sign Up Screen';
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: SingleChildScrollView(
      child: Form(
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
                    onChanged: (value) => register1.email = value,
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
                    onChanged: (value) => register1.pass = value,
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
              StreamBuilder<String>(
                stream: register1.errorStream,
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
                      if (register1.register1()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InputUsername()));
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
                        backgroundColor: Colors.black,
                        minimumSize: const Size(1000, 60)),
                  ))
            ]),
      ),
    ));
  }
}
