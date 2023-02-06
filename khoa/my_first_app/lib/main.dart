import 'package:flutter/material.dart';
import 'package:my_first_app/app.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}
