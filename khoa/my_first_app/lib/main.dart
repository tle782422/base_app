import 'package:flutter/material.dart';
import 'package:my_first_app/app.dart';
import 'package:my_first_app/bloc/bloc_login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //ChangeNotifierProvider(create: (_) => UserMain()),
    Provider(create: (_) => LoginBloc()),
  ], child: const MyApp()));
}
