import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _username;
  late TextEditingController _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        foregroundColor: Colors.black,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Log in",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                  controller: _username,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    errorBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: 
              TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: _password,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    errorBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(username: _username.text,password: _password.text,name: "")));
                  }
                },
                child: const Text("LOG IN"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}