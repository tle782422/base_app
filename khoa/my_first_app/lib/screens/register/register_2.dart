import 'package:flutter/material.dart';
import 'package:my_first_app/screens/home/home_screen.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({Key? key, required this.username, required this.password}) : super(key: key);

  final String username;
  final String password;

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {

  late TextEditingController _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
  }

  @override
  void dispose() {
    _name.dispose();
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
                "Register",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                  controller: _name,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Name",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    errorBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(username: widget.username,password: widget.password,name: _name.text)));
                  }
                },
                child: const Text("SIGN UP"),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              child: const Text.rich(
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
          ],
        ),
      ),
    );
  }
}