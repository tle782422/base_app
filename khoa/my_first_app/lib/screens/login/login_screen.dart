import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_app/screens/tabs/tabbars.dart';
import 'package:my_first_app/user.dart';
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
            _buildTitle("Log in", 40, FontWeight.normal),
            const SizedBox(height: 25),
            _buildTextForm(
                _username, "Username", "Please enter username", false),
            const SizedBox(height: 10),
            _buildTextForm(_pass, "Password", "Please enter password", true),
            _buildLoginButton(context),
          ],
        ),
      ),
    );
  }

  ///build a title
  Widget _buildTitle(String text, double size, FontWeight fw) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: fw),
      ),
    );
  }

  ///build a textformfield
  Widget _buildTextForm(TextEditingController _controller, String _hintText,
      String _textvali, bool _obscure) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        obscureText: _obscure,
        controller: _controller,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return _textvali;
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: _hintText,
          enabledBorder: const OutlineInputBorder(),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(width: 2)),
          errorBorder: const OutlineInputBorder(),
          focusedErrorBorder:
              const OutlineInputBorder(borderSide: BorderSide(width: 2)),
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
