import 'package:flutter/material.dart';
import 'package:my_first_app/bloc/register_bloc.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/tabbars.dart';
import 'package:my_first_app/screens/widget/build_title.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final registerbloc = RegisterBloc();

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
          const BuildTitle(text: "Register", size: titleLsize),
          const SizedBox(height: 25),
          _buildUserTextField(context),
          const SizedBox(height: 10),
          _buildPassTextField(context),
          const SizedBox(height: 10),
          _buildNameTextField(context),
          StreamBuilder<String>(
            stream: registerbloc.error,
            builder: (context, snapshot) => Text(
              snapshot.data ?? "",
              style: const TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic),
            ),
          ),
          _buildRegisterbutton(context),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                    text: "By signing up, you agree to ABC's ",
                    children: <TextSpan>[
                      TextSpan(
                          text: "Terms of Service",
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: "Privacy Policy.",
                          style:
                              TextStyle(decoration: TextDecoration.underline)),
                    ]),
              ),
            ),
          ),
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
          registerbloc.setpassword = value;
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
          registerbloc.setusername = value;
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

  Widget _buildNameTextField(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        onChanged: (value) {
          registerbloc.setname = value;
        },
        decoration: const InputDecoration(
          hintText: "Name",
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
          errorBorder: OutlineInputBorder(),
          focusedErrorBorder:
              OutlineInputBorder(borderSide: BorderSide(width: 2)),
        ),
      ),
    );
  }

  Container _buildRegisterbutton(BuildContext context) {
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
          //Provider.of<UserMain>(context, listen: false).signup(username,password,_name.text);
          //context.read<UserMain>().signup(username, password, _name.text);
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Tabbars()),
              ModalRoute.withName('/'));
        },
        child: const Text("SIGN UP"),
      ),
    );
  }
}
