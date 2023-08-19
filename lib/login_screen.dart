import 'package:flutter/material.dart';
import 'package:login_with_provider_and_api/ath_controller.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final controller = Provider.of<AuthCotoller>(context);

//  This function is user validate  the textfields
    void validatorFun() {
      if (formKey.currentState!.validate()) {
        return;
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Login with Provider and Api")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid gmail";
                  } else {}
                  return null;
                },
                onTap: validatorFun,
                controller: controller.emailController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  label: Text("Email"),
                  hintText: "email@gmail.com",
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty || value.length < 8) {
                    return 'Enter valid Password';
                  }
                  return null;
                },
                onTap: validatorFun,
                controller: controller.passwordController,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    label: Text("Password"),
                    hintText: "*****",
                    suffixIcon: Icon(Icons.visibility_off)),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: controller.validation, child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
