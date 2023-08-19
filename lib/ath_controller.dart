import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AuthCotoller extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(String email, String password) async {
    try {
      Response response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print("Successfull");
      } else {
        print("Fallied");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void validation() {
    login(emailController.text, passwordController.text);
  }
}
