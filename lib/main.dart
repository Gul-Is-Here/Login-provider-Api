import "package:flutter/material.dart";
import 'package:login_with_provider_and_api/ath_controller.dart';
import 'package:login_with_provider_and_api/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthCotoller(),
        )
      ],
      child: MaterialApp(
        title: "Provider",
        theme:
            ThemeData(primaryColor: Colors.orange, primarySwatch: Colors.teal),
        home: LoginScreen(),
      ),
    );
  }
}
