import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/register/register2_screen.dart';
import 'package:my_first_app/somematerial.dart';

class RegisterScreen1 extends StatelessWidget {
  RegisterScreen1({Key? key}) : super(key: key);

  final _username = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            const BuildTitle(text: "Register", size: titleLsize),
            const SizedBox(height: 25),
            BuildTextForm(controller: _username, hintText: "Username", textvali: "Please enter username", obscure: false),
            const SizedBox(height: 10),
            BuildTextForm(controller: _password, hintText: "Password", textvali: "Please enter password", obscure: true),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen2(username: _username.text,password: _password.text))); 
                  }
                },
                child: const Text("NEXT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}