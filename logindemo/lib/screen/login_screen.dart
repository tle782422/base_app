import 'package:flutter/material.dart';
import 'package:logindemo/bloc/login_bloc.dart';
import 'package:logindemo/screen/home_screen.dart';
import 'package:logindemo/screen/welcome_screen.dart';
import 'package:provider/provider.dart';
import '../provider/login_provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  // static const routeName = '/login-screen';

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  // static const String _title = 'Login Screen';
  final login = LoginBloc();

  @override
  Widget build(BuildContext context) {
    // title: _title,
    return Scaffold(
      // appBar: AppBar(title: const Text(_title), co),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen())),
                  // onPressed: () async {
                  //     if (_formKey.currentState!.validate()) {
                  //       if (_validateLogin(context)) {
                  //         Navigator.pushAndRemoveUntil(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => const Tabbars()),
                  //           ModalRoute.withName('/'),
                  //         );
                  //       }
                  //     }
                  //   },
                  icon: const Icon(Icons.arrow_back)),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                  child: TextFormField(
                    onChanged: (value) => login.username = value,
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
                    onChanged: (value) => login.pass = value,
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter password:',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  )),
              StreamBuilder<String>(
                stream: login.errorStream,
                builder: (context, snapshot) {
                  return Center(child: Text(snapshot.data ?? ""));
                },
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (await login.login()) {
                        context.read<LoginProvider>().signin(login.user);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      }
                    },
                    child: const Text(
                      'LOG IN',
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
    );
  }
}
