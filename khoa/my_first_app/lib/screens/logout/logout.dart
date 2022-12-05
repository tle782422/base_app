import 'package:flutter/material.dart';
import 'package:my_first_app/screens/login/login.dart';
import 'package:my_first_app/screens/register/register_1.dart';


class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset("assets/images/logoutscreen.jpg", fit: BoxFit.contain),
                  Positioned(
                    left: _size.width*0.3,
                    right: _size.width*0.3,
                    bottom: _size.height*0.4,
                    top: _size.height*0.4,
                    child: const Center(child: Text("Demo", style: TextStyle(fontSize: 50,color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Row(
                        children: <Widget>[
                          const CircleAvatar(backgroundImage: AssetImage("assets/icons/avatar.png")), 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text("Nguyen Dang Khoa", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold)),
                              Text("@ABC", style: TextStyle(fontSize: 13,color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 85,//_size.height*0.11,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                        textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        side: const BorderSide(width: 2.0, color: Colors.black),
                      ),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())), 
                      child: const Text("LOG IN"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                        textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen1())), 
                      child: const Text("REGISTER"),
                    ),
                  ],
                ),
              ),
            ],
          ),
      )
    );
  }
}