import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/tabbars.dart';
import 'package:my_first_app/somematerial.dart';
import 'package:my_first_app/providers/user.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _username = TextEditingController();
  final _pass = TextEditingController();
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
            const BuildTitle(text: "Log in", size: titleLsize),
            const SizedBox(height: 25),
            BuildTextForm(controller: _username, hintText: "Username", textvali: "Please enter username", obscure: false),
            const SizedBox(height: 10),
            BuildTextForm(controller: _pass, hintText: "Password", textvali: "Please enter password", obscure: true),
            _buildLoginButton(context),
          ],
        ),
      ),
    );
  }

  ///build a login button
  Widget _buildLoginButton(context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          primary: Colors.black,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            if (_validateLogin(context)) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Tabbars()),
                ModalRoute.withName('/'),
              );
            }
          }
        },
        child: const Text("LOG IN"),
      ),
    );
  }

  ///validate login
  bool _validateLogin(context) {
    return Provider.of<User>(context, listen: false)
        .signin(_username.text.toString(), _pass.text.toString());
  }
}
