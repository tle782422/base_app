import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/tabbars.dart';
import 'package:my_first_app/somematerial.dart';
import 'package:provider/provider.dart';

import '../../providers/user.dart';

class RegisterScreen2 extends StatelessWidget {
  RegisterScreen2({Key? key, required this.username, required this.password}) : super(key: key);

  final String username;
  final String password;

  final _name = TextEditingController();
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
            BuildTextForm(controller: _name, hintText: "Name", textvali: "Please enter your name", obscure: false),
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
                    //Provider.of<UserMain>(context, listen: false).signup(username,password,_name.text);
                    context.read<UserMain>().signup(username, password, _name.text);
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Tabbars()),ModalRoute.withName('/'));
                  }
                },
                child: const Text("SIGN UP"),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    text: "By signing up, you agree to ABC's ",
                    children: <TextSpan>[
                      TextSpan(text: "Terms of Service", style: TextStyle(decoration: TextDecoration.underline)),
                      TextSpan(text: " and "),
                      TextSpan(text: "Privacy Policy.", style: TextStyle(decoration: TextDecoration.underline)),
                    ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}