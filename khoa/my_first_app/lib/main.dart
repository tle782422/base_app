import 'package:flutter/material.dart';
import 'package:my_first_app/app.dart';
import 'package:my_first_app/providers/chat_provider.dart';
import 'package:my_first_app/providers/content_provider.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
    ChangeNotifierProvider(create: (_) => ContentProvider()),
    ChangeNotifierProvider(create: (_) => ChatProvider()),
  ], child: const MyApp()));
}
