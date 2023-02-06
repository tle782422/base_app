import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/bloc/bloc_login.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/tabbars.dart';
import 'package:my_first_app/somematerial.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginb = LoginBloc();

  @override
  void dispose() {
    super.dispose();
    loginb.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          const BuildTitle(text: "Log in", size: titleLsize),
          const SizedBox(height: 25),
          _buildUserTextField(context),
          const SizedBox(height: 10),
          _buildPassTextField(context),
          StreamBuilder<String>(
            stream: loginb.error,
            builder: (context, snapshot) => Text(snapshot.data ?? "", style: const TextStyle(color: Colors.red,fontStyle: FontStyle.italic),),
          ),
          _buildLoginButton(context),
        ],
      ),
    );
  }

  Widget _buildPassTextField(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        obscureText: true,
        onChanged: (value) {
          loginb.setpassword = value;
        },
        decoration: const InputDecoration(
          hintText: "Password",
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
          errorBorder: OutlineInputBorder(),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(width: 2)),
        ),
      ),
    );
  }

  Widget _buildUserTextField(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        onChanged: (value) {
          loginb.setusername = value;
        },
        decoration: const InputDecoration(
          hintText: "Username",
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
          errorBorder: OutlineInputBorder(),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(width: 2)),
        ),
      ),
    );
  }

  ///build a login button
  Widget _buildLoginButton(BuildContext context) {
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
          if (loginb.validateLogin()) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Tabbars()),
              ModalRoute.withName('/'),
            );
          }
        },
        child: const Text("LOG IN"),
      ),
    );
  }
}
